`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 09:19:32 AM
// Design Name: 
// Module Name: pixelCounterTB
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


module pixelCounterTB();

    reg hsync;
    reg vsync;
    reg clk;
    reg reset_n=0;
    reg [18:0] pixNum;
    reg [9:0] xpix;
    reg [9:0] ypix;
    
vgaSync syncGen ( //HSync and VSync Timings are Verified
.hsync(hsync),
.vsync(vsync),
.clk25(clk),
.reset_n(reset_n));

pixelCounter uut(
    .pixelClk(clk),
    .reset_n(reset_n),
    .HSync(hsync),
    .VSync(vsync),
    .pixelNumber(pixNum),
    .xpix(xpix),
    .ypix(ypix)
    );

time clock_period = 40ns;

always begin
    #(clock_period/2);
    clk = 1;
    #(clock_period/2);
    clk = 0;    
end

initial begin
    reset_n = 0;
    #40;
    reset_n = 1;
    #(clock_period*900*525);
end

endmodule
