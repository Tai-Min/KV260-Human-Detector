`timescale 1ns / 1ps

module stepper_tb;
    // In.
    reg clk = 0;
    reg latch = 0;
    reg [10:0] cmd = 0;
    reg force_ena = 0;
    reg stop1 = 0; // This endstop is pressed at the start of the simulation.
    reg stop2 = 1;
    
    // Out.
    wire  step;
    wire dir;
    wire ena;
    wire busy;
    
    stepper uut(
        .clk(clk),
        .latch(latch),
        .cmd(cmd),
        .force_ena(force_ena),
        .stop1(stop1),
        .stop2(stop2),
        .step(step),
        .dir(dir),
        .ena(ena),
        .busy(busy)
    );
    
    localparam reg unsigned [3:0] CMD_MSB = 4'd10;
    localparam reg unsigned [3:0] CMD_LSB = CMD_MSB - 4'd1;
    localparam reg unsigned [3:0] DIR_BIT = CMD_LSB - 4'd1;
    localparam reg unsigned [3:0] PARAM_MSB = DIR_BIT - 4'd1;
    localparam reg unsigned [3:0] PARAM_LSB = 0;

    localparam reg unsigned [1:0] CMD_NOP = 2'd0;
    localparam reg unsigned [1:0] CMD_BASE = 2'd1;
    localparam reg unsigned [1:0] CMD_MOV = 2'd2;

    localparam reg DIR_STOP1 = 1'b0;
    localparam reg DIR_STOP2 = 1'b1;
    
    integer k = 0;
    
    initial begin
        // Try NOP.
        // Expected:
        // Nothing changes.
        cmd[CMD_MSB:CMD_LSB] = CMD_NOP;
        latch = 1'b1;
        #1 latch = 1'b0;
        
        for (k=0; k < 20; k=k+1) begin
            #1 clk = ~clk;
        end
        #0;
        
        
        
        // Try forcing enable pin.
        // Expected:
        // Enable pin gets set to 0 even if there is no BASE or MOV.
        force_ena = 1'b1;
        
        for (k=0; k < 20; k=k+1) begin
            #1 clk = ~clk;
        end
        
        force_ena = 1'b0;
        #0;
        
        
        
        // Try BASE to endstop 2.
        // Expected:
        // Stepping until endstop 2 is hit.
        cmd[CMD_MSB:CMD_LSB] = CMD_BASE;
        cmd[DIR_BIT] = DIR_STOP2;
        latch = 1'b1;
        #1 latch = 1'b0;
        
        for (k=0; k < 10; k=k+1) begin
            if(clk && !stop1) stop1 = ~stop1;
            #1 clk = ~clk;
        end
        
        stop2 = 1'b0;
        
        for (k=0; k < 10; k=k+1) begin
            #1 clk = ~clk;
        end
        #0;
        
        
        
        // Try BASE to endstop 1
        // but stop with NOP.
        // Expected:
        // Stepping until NOP is latched.
        cmd[CMD_MSB:CMD_LSB] = CMD_BASE;
        cmd[DIR_BIT] = DIR_STOP1;
        #1 latch = 1'b1;
        #1 latch = 1'b0;
        
        for (k=0; k < 10; k=k+1) begin
            if(clk && !stop2) stop2 = ~stop2;
            #1 clk = ~clk;
        end
        
        cmd[CMD_MSB:CMD_LSB] = CMD_NOP;
        latch = 1'b1;
        #1 latch = 1'b0;
        
        for (k=0; k < 10; k=k+1) begin
            #1 clk = ~clk;
        end
        #0;
        
        
        
        // Try resume BASE to endstop 1.
        // Expected:
        // Stepping until endstop 1 is hit.
        cmd[CMD_MSB:CMD_LSB] = CMD_BASE;
        latch = 1'b1;
        #1 latch = 1'b0;
        
        for (k=0; k < 10; k=k+1) begin
            #1 clk = ~clk;
        end
        
        stop1 = 1'b0;
        
        for (k=0; k < 10; k=k+1) begin
            #1 clk = ~clk;
        end
        #0;
        
        
        
        // Try MOV 5 steps to endstop 2.
        // Expected:
        // 5 steps performed.
        cmd[CMD_MSB:CMD_LSB] = CMD_MOV;
        cmd[DIR_BIT] = DIR_STOP2;
        cmd[PARAM_MSB:PARAM_LSB] = 8'd5;
        latch = 1'b1;
        #1 latch = 1'b0;
        
        for (k=0; k < 20; k=k+1) begin
            if(clk && !stop1) stop1 = ~stop1;
            #1 clk = ~clk;
        end
        #0;
        
        
        
        // Try MOV 10 steps
        // but latch NOP after some steps steps.
        // Expected:
        // less than 10 steps performed.
        cmd[CMD_MSB:CMD_LSB] = CMD_MOV;
        cmd[DIR_BIT] = DIR_STOP2;
        cmd[PARAM_MSB:PARAM_LSB] = 8'd10;
        latch = 1'b1;
        #1 latch = 1'b0;
        
        for (k=0; k < 15; k=k+1) begin
            #1 clk = ~clk;
        end
        
        cmd[CMD_MSB:CMD_LSB] = CMD_NOP;
        #1 latch = 1'b1;
        #1 latch = 1'b0;
        
        for (k=0; k < 20; k=k+1) begin
            #1 clk = ~clk;
        end
        #0;
        
        
        
        // Try MOV 10 steps with dir to endstop 2
        // but hit it before 10 steps performed
        // Expected:
        // Moving stopped when endstop 2 is hit.
        cmd[CMD_MSB:CMD_LSB] = CMD_MOV;
        cmd[PARAM_MSB:PARAM_LSB] = 8'd10;
        latch = 1'b1;
        #1 latch = 1'b0;
        
        for (k=0; k < 15; k=k+1) begin
            #1 clk = ~clk;
        end
        
        stop2 = 1'b0;
        
        for (k=0; k < 15; k=k+1) begin
            #1 clk = ~clk;
        end
        #0;
        
        
        
        // Try MOV 10 steps
        // but interrupt with BASE to endstop 1.
        // Expected:
        // Stepping until endstop 1 is hit.
        cmd[CMD_MSB:CMD_LSB] = CMD_MOV;
        cmd[DIR_BIT] = DIR_STOP1;
        cmd[PARAM_MSB:PARAM_LSB] = 8'd10;
        latch = 1'b1;
        #1 latch = 1'b0;
        
        for (k=0; k < 15; k=k+1) begin
            if(clk && !stop2) stop2 = ~stop2;
            #1 clk = ~clk;
        end
        
        cmd[CMD_MSB:CMD_LSB] = CMD_BASE;
        latch = 1'b1;
        #1 latch = 1'b0;
        
        for (k=0; k < 15; k=k+1) begin;
            #1 clk = ~clk;
        end
        
        stop1 = 1'b0;
        
        for (k=0; k < 15; k=k+1) begin
            #1 clk = ~clk;
        end
        #0;
        
        
        
        // Try BASE to endstop 2
        // but interrupt with MOV 10 steps.
        // Expected:
        // Stepping for some steps and stop before endstop 2 is hit.
        cmd[CMD_MSB:CMD_LSB] = CMD_BASE;
        cmd[DIR_BIT] = DIR_STOP2;
        latch = 1'b1;
        #1 latch = 1'b0;
        
        for (k=0; k < 15; k=k+1) begin
            if(clk && !stop1) stop1 = ~stop1;
            #1 clk = ~clk;
        end
        
        cmd[CMD_MSB:CMD_LSB] = CMD_MOV;
        cmd[PARAM_MSB:PARAM_LSB] = 8'd10;
        latch = 1'b1;
        #1 latch = 1'b0;
        
        for (k=0; k < 30; k=k+1) begin
            #1 clk = ~clk;
        end
        #0;
        
        
        
        // Try BASE to endstop 2
        // when it's already on endstop 2.
        // Expected:
        // No steps performed.
        stop2 = 1'b0;
        
        cmd[CMD_MSB:CMD_LSB] = CMD_BASE;
        cmd[DIR_BIT] = DIR_STOP2;
        latch = 1'b1;
        #1 latch = 1'b0;
        
        for (k=0; k < 15; k=k+1) begin
            #1 clk = ~clk;
        end
        #0;
        
        
        
        // Try MOV to endstop 2
        // when it's already on endstop 2.
        // Expected:
        // No steps performed.
        cmd[CMD_MSB:CMD_LSB] = CMD_MOV;
        latch = 1'b1;
        #1 latch = 1'b0;
        
        for (k=0; k < 15; k=k+1) begin
            #1 clk = ~clk;
        end
        #0;
        
        
        
        $finish;
    end
endmodule
