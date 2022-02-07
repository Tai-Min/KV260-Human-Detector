module temp2pwm(
    input rdy,
    input [9:0] temp,
    output reg [7:0] pwm = 8'b0
    );
    
    // C deg.
    parameter reg signed [7:0] FAN_0_DEG_TEMP = 8'd25;
    parameter reg signed [7:0] FAN_100_DEG_TEMP = 8'd65;
    
    // Hysteresis PWM values.
    parameter reg signed [7:0] FAN_PWM_OFF_VAL = 8'd32;
    parameter reg signed [7:0] FAN_PWM_ON_VAL = 8'd64;
    
    // C deg * 100 to increase resolution abit without floats.
    localparam reg signed [15:0] FAN_0_DEG_x100_TEMP = FAN_0_DEG_TEMP * 16'd100;
    localparam reg signed [15:0] FAN_100_DEG_x100_TEMP = FAN_100_DEG_TEMP * 16'd100;
    
    // Linear eq params to convert temperature to PWM.
    localparam reg signed [15:0] a = 16'd255 / ((FAN_100_DEG_x100_TEMP - FAN_0_DEG_x100_TEMP) / 16'd100);
    localparam reg signed [15:0] b = -a * (FAN_0_DEG_x100_TEMP / 16'd100);
    
    reg signed [15:0] temp_deg_x100  = 16'd0; // Current temp in C deg * 100.
    reg signed [15:0] desired_pwm = 16'd0; // Desired PWM. Twice as big for potential overflows.
    reg pwm_on = 1'b0; // Boolean to toggle on/off hysteresis.
    reg unsigned [7:0] pwm_val = 8'd0; // Real PWM value that will be used when hysteresis allows it.
    
    always @ (posedge rdy) begin
        // Convert into C degrees * 100 using values from SYSMON4 
        // transfer function with use of internal reference.
        // Should be 50931 / 1024 instead 50 but it's roughly 49.7 
        // which would be floored down to 49, so 50 is a bit more precise.
        temp_deg_x100 = ((temp * 16'd50) - 16'd28023); 
        
        desired_pwm = a * (temp_deg_x100 / 16'd100) + b; // Compute desired PWM.
        
        desired_pwm = desired_pwm > 16'd255 ? 16'd255 : desired_pwm; // Upper saturation of desired PWM to 255.
        desired_pwm = desired_pwm < 16'd0 ? 16'd0 : desired_pwm; // Lower saturation of desired PWM to 0.
        
        pwm_val = temp_deg_x100 >= FAN_100_DEG_x100_TEMP ? 8'd255 : desired_pwm; // Upper saturation of desired PWM to 255 when at or above FAN_100_DEG_x100_TEMP.
        pwm_val = temp_deg_x100 <= FAN_0_DEG_x100_TEMP ? 8'd0 : desired_pwm; // Lower saturation of desired PWM to 0 when at or below FAN_0_DEG_x100_TEMP.
        
        // PWM value above hysteresis threshold so enable.
        if (pwm_val >= FAN_PWM_ON_VAL) begin
            pwm_on = 1'b1;
        end
        // PWM value below hysteresis threshold so set fan to 0.
        else if (pwm_val < FAN_PWM_OFF_VAL) begin
            pwm_on = 1'b0;
        end

        pwm = pwm_on ? pwm_val : 8'b0; // Write pwm_val if hysteresis is on and 0 if off.
    end
endmodule
