`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 05:28:56 PM
// Design Name: 
// Module Name: vgaSync
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


module vgaSync(
    output hsync,
    output vsync,
    input clk25,
    input reset_n
    );

logic slw;
logic slw2;
PWMmod #($ceil($clog2(800)),800,0) hsyncGenerator (
.clk(clk25),
.reset_n(reset_n),
.triggerValue(96),
.pwm_out(hsync),
.slw_clk(slw)
);

PWMmod #($ceil($clog2(525)),525,0) vsyncGenerator (
.clk(!hsync),
.reset_n(reset_n),
.triggerValue(2),
.pwm_out(vsync),
.slw_clk(slw2)
);

//always_ff @(posedge clk25,negedge reset_n)
//begin
//    if(!reset_n) begin
//        pixel = 0;
//    end else begin
//        if(vsync == 0) begin
//            pixel = 0;
//        end else if (vsync & hsync) begin
//            pixel += 1;
//        end
//    end
//end


endmodule
