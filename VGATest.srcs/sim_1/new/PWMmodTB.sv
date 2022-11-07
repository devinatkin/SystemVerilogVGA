`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 05:13:33 PM
// Design Name: 
// Module Name: PWMmodTB
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


module PWMmodTB();

reg clk = 0;
reg reset_n = 0;
reg pwm;
reg slw;



PWMmod #($ceil($clog2(525)),525,0) vsyncGenerator (
.clk(clk),
.reset_n(reset_n),
.triggerValue(43),
.pwm_out(pwm),
.slw_clk(slw)
);

time clock_period = 10ns;

always begin
    #(clock_period/2);
    clk = 1;
    #(clock_period/2);
    clk = 0;    
end

initial begin
    #20;
    reset_n = 1;
    #200;
end


endmodule
