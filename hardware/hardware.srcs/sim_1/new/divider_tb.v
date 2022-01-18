`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.12.2021 14:41:48
// Design Name: 
// Module Name: divider_tb
// Project Name: 
// Target Devices: 
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


module divider_tb;
    // In.
    reg clk_in;
    reg rst;
    
    // Out.
    wire clk_out;
    
    divider #(.IN_FREQ(20), .OUT_FREQ(5)) uut (
        .clk_in(clk_in),
        .rst(rst),
        .clk_out(clk_out)
    );
    
    integer k;
    initial begin
        clk_in = 'b0;
        
        // Reset signal.
        rst = 'b1;
        #1 rst = 'b0;
        #1 rst = 'b1;
        
        // Signals without forced reset.
        for (k=0; k < 60; k=k+1) begin
            #1 clk_in = ~clk_in;
        end
        
        // Signals with forced reset.
        clk_in = 'b0;
        rst = 'b0;
        for (k=0; k < 60; k=k+1) begin
            #1 clk_in = ~clk_in;
        end
        
        $finish;
    end
endmodule
