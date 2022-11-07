`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 06:43:42 PM
// Design Name: 
// Module Name: top
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


module top(
    output Hsync,
    output Vsync ,
    input CLK100MHZ,
    input [0:1]sw,
    output [3:0] vgaRed,
    output [3:0] vgaBlue,
    output [3:0] vgaGreen,
    output [15:0] LED
    );
  logic locked;
  logic clk25; 
  
  logic [31:0] outputs; //Microblaze I/O
  logic [31:0] inputs;
  
  wire [18:0] pixNum;
  wire [9:0] xpix;
  wire [9:0] ypix;
  wire CLK_100M_1;
  assign outputs = LED;
  
 vgaCLKgen clkGen
 (
  .clk_out1(clk25),
  .clk_out100(CLK_100M_1),
  .reset(!sw[1]),
  .locked(locked),
  .clk(CLK100MHZ)
 );
    
   VGA_Module vga_Gen(
    .CLK25(clk25),
    .reset_n(sw[1]),
    .test(sw[0]),
    .red_in(1),
    .green_in(2),
    .blue_in(3),
    .HSync(Hsync),
    .VSync(Vsync),
    .VGA_RED(vgaRed),
    .VGA_GREEN(vgaGreen),
    .VGA_BLUE(vgaBlue),
    .Xcor(xpix),
    .Ycor(ypix),
    .Pix_Val(pixNum)
    );


//MicroB_wrapper microControl
//   (inputs,
//    outputs,
//    !sw[1],
//    sw[1],
//    CLK100MHZ);

endmodule
