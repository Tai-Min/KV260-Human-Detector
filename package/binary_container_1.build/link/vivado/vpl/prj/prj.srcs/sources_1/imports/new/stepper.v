`timescale 1ns / 1ps

module stepper(
    input clk,
    input latch,
    input [10:0] cmd,
    input force_ena,
    input stop1, // Active LOW.
    input stop2, // Active LOW.
    output step,
    output reg dir = 1'b0,
    output ena, // Active LOW.
    output busy
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

    // Store current command.
    reg unsigned [1:0] curr_cmd = 2'd0;

    // Used to track whether new command arrived.
    reg cmd_latch_flip = 1'b0; // Flips in latch detection to inform pos clock edge detection that new command was latched.
    reg cmd_posedge_flip = 1'b0; // Get's compared to cmd_latch_flip in pos clock edge detection
                                 // to detect whether new command was latched and reset state registers.
                                 
    // Flip flop for step on pos and neg clock edges.
    reg step_posedge = 1'b0;
    reg step_negedge = 1'b0;

    // Flip flop for busy on latch and pos clock edge.
    reg busy_latch = 1'b0;
    reg busy_posedge = 1'b0;

    // For MOV command.
    reg unsigned [7:0] steps_performed = 8'd0;
    reg unsigned [7:0] steps_to_perform = 8'd0;

    assign busy = busy_latch ^ busy_posedge;
    assign step = step_posedge ^ step_negedge;
    assign ena = force_ena ? 1'b0 : ~busy;

    always @ (posedge latch) begin

        // Stop command received so stop doing stuff.
        if(cmd[CMD_MSB:CMD_LSB] == CMD_NOP && busy) begin
            busy_latch <= ~busy_latch;
        end
        // BASE or MOV received so prepare to move.
        else if (cmd[CMD_MSB:CMD_LSB] == CMD_BASE || cmd[CMD_MSB:CMD_LSB] == CMD_MOV) begin
            if(~busy) busy_latch <= ~busy_latch;
            steps_to_perform <= cmd[PARAM_MSB:PARAM_LSB];
            dir <= cmd[DIR_BIT];
        end

        cmd_latch_flip <= ~cmd_latch_flip; // Mark that new command was received.
        curr_cmd <= cmd[CMD_MSB:CMD_LSB];
    end

    always @ (posedge clk) begin
        // New command arrived so reset MOV's step counter.
        // This takes first clock cycle after latch.
        if(cmd_latch_flip != cmd_posedge_flip) begin
            cmd_posedge_flip <= ~cmd_posedge_flip;
            steps_performed <= 8'd0;
        end
        // Do received command.
        else if (busy) begin
            case(curr_cmd)
                CMD_BASE: begin
                    // Stop if stepper hit corresponding endstop.
                    if ((dir == DIR_STOP1 && ~stop1) || dir == DIR_STOP2 && ~stop2) begin
                        busy_posedge <= ~busy_posedge;
                    end
                    // Do step otherwise.
                    else begin
                        if(~step) step_posedge <= ~step_posedge;
                    end
                end
                CMD_MOV: begin
                    // Stop if stepper performed desired number of steps
                    // or hit endstop corresponding to direction of rotation.
                    if ((steps_performed == steps_to_perform) || (dir == DIR_STOP1 && ~stop1) || dir == DIR_STOP2 && ~stop2) begin
                        busy_posedge <= ~busy_posedge;
                    end
                    // Do step otherwise.
                    else begin
                        steps_performed <= steps_performed + 8'd1;
                        if (~step) step_posedge <= ~step_posedge;
                    end
                end
            endcase
        end
    end

    // Pull step LOW if it's high.
    always @ (negedge clk) begin
        if (step) step_negedge <= ~step_negedge;
    end

endmodule
