`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2022 01:40:18 PM
// Design Name: 
// Module Name: RainbowGeneratorTB
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


module RainbowGeneratorTB( );

    reg hsync;
    reg vsync;
    reg clk;
    reg reset_n=0;
    reg [18:0] pixNum;
    reg [9:0] xpix;
    reg [9:0] ypix;
    
    reg [3:0] vgaRed;
    reg [3:0] vgaBlue;
    reg [3:0] vgaGreen;
    
vgaSync syncGen ( //HSync and VSync Timings are Verified
.hsync(hsync),
.vsync(vsync),
.clk25(clk),
.reset_n(reset_n));

pixelCounter pixCounter(
    .pixelClk(clk),
    .reset_n(reset_n),
    .HSync(hsync),
    .VSync(vsync),
    .pixelNumber(pixNum),
    .xpix(xpix),
    .ypix(ypix)
    );

RainboxGenerator untested(
    .clk(clk),
    .reset_n(reset_n),
    .vgaRed(vgaRed),
    .vgaBlue(vgaBlue),
    .vgaGreen(vgaGreen),
    .pixX(xpix),
    .pixY(ypix)
    );


time clock_period = 40ns;

always begin
    #(clock_period/2);
    clk = 1;
    #(clock_period/2);
    clk = 0;    
end



initial begin
    $timeformat(-9, 2, " ns");
    reset_n = 0;
    #20;
    reset_n = 1;
    #(clock_period*900*525);
end
endmodule
