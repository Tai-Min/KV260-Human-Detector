`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.12.2021 16:25:47
// Design Name: PWM testbench
// Module Name: pwm_tb
// Project Name: PWM testbench
// Target Devices: KV260
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pwm_tb;
    // In.
    reg clk;
    reg [7:0] fill;
    reg rst;
    
    // Out.
    wire state;
    
    pwm uut (
        .clk(clk),
        .fill(fill),
        .rst(rst),
        .state(state)
    );
    
    integer k = 'd0;
    
    initial begin
        clk = 'b0;
        
        rst = 'b0;
        #1 rst = 'b1;
        
        // 0% fill.
        #1 fill = 'd0;
        for(k=0;k<1000;k=k+1) begin
            #1 clk = ~clk;
        end
        
        // 25% fill.
        #1 fill = 'd64;
        for(k=0;k<1000;k=k+1) begin
            #1 clk = ~clk;
        end
        
        // 50% fill.
        #1 fill = 'd128;
        for(k=0;k<1000;k=k+1) begin
            #1 clk = ~clk;
        end
        
        // 50% fill on reset.
        #1 rst = 'b0;
        fill = 'd128;
        for(k=0;k<1000;k=k+1) begin
            #1 clk = ~clk;
        end
        
        // 100% fill.
        #1 rst = 'b1;
        fill = 'd255;
        for(k=0;k<1000;k=k+1) begin
            #1 clk = ~clk;
        end
        
        $finish;
    end
endmodule
