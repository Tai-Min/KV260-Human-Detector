`timescale 1ns / 1ps

module temp2pwm_tb;
    // In.
    reg rdy = 0;
    reg unsigned [9:0] temp = 0;
    
    // Out.
    wire [7:0] pwm;
    
    temp2pwm uut(
        .rdy(rdy),
        .temp(temp),
        .pwm(pwm)
    );
    
    integer signed temp_deg = -30;
    
    initial begin
        // Increase temperature and see whether PWM increases too.
        while (temp_deg < 140) begin
            #10 temp = (temp_deg + 280.23087870) * 1024 / 509.3140064;
            #1 rdy = 'b1;
            #1 rdy = 'b0;
            temp_deg = temp_deg + 5;
        end
        $finish;
    end
endmodule
