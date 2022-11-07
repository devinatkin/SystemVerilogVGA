`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 04:14:08 PM
// Design Name: 
// Module Name: PWMmod
// Project Name: 
// Target Devices: Basys 3
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: PWM Module intended for inclusion in a VGA module or for other PWM purposes  
// 
//////////////////////////////////////////////////////////////////////////////////


module PWMmod #(parameter int registerSize = 16, maxRegisterValue = 15,polarity = 1)(
    input clk,
    input reset_n,
    input [registerSize-1:0] triggerValue,
    output logic pwm_out,
    output logic slw_clk
    );
    

    localparam [registerSize:0] halfWay = $floor(maxRegisterValue/2);
    logic [registerSize:0] counter;
    always_ff @(posedge clk,negedge reset_n)
    begin
        if(!reset_n) begin
            counter = 0;
            slw_clk = 0;
            pwm_out = 0;
        end else begin
            counter += 1;
            if(counter == maxRegisterValue) begin
                counter = 0;
                slw_clk = 0;
                pwm_out = polarity;
            end
            if(counter == triggerValue) begin
                pwm_out = ~polarity;
            end
            if (counter == halfWay) begin
                slw_clk = 1;
            end
        end
    end
    
    
    
    
endmodule
