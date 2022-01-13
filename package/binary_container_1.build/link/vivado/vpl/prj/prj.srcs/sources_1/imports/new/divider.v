`timescale 1ns / 1ps

module divider(
    input clk_in,
    input rst,
    output reg clk_out = 1'b0
);

    parameter integer unsigned IN_FREQ = 200000000;
    parameter integer unsigned OUT_FREQ = 2000;
    localparam integer unsigned DENOMINATOR = IN_FREQ / OUT_FREQ / 2;

    integer unsigned counter = 0;

    always @ (posedge clk_in, negedge rst) begin
        // Reset pulled low so keep initial state.
        if (rst == 1'b0) begin
            counter <= 0;
            clk_out <= 1'b0;
        end

        // Normal divider operation.
        else begin
            counter <= (counter + 1) % DENOMINATOR;
            clk_out <= !counter ? ~clk_out : clk_out;
        end
    end
endmodule