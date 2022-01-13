`timescale 1ns / 1ps

module pwm(
    input clk,
    input [7:0] fill,
    input rst,
    output reg state = 1'b0
);

    reg unsigned [7:0] counter = 8'd0;

    always @ (posedge clk, negedge rst) begin
        // Reset pulled low so keep initial state.
        if (rst == 1'b0) begin
            state <= 1'b1;
            counter <= 8'd0;
        end

        // Normal PWM operation.
        else begin
            counter <= (counter + 8'd1) % 8'd255;
            state <= ~(counter < fill);
        end
    end
endmodule