`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2022 08:15:58 AM
// Design Name: 
// Module Name: ColorSequencer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Generate Sequencing Commands for VGA Output 
// Take in PixX, PixY and Calculate the Pixels Between them and the previous value 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ColorSequencer(
    input clk,
    input rst_n,
    input [11:0] color,
    input [9:0] pixX,
    input [9:0] pixY,
    output [19:0] PixelCount,
    output [11:0] PixelColor,
    output Command_Ready
    );
    
    
    
endmodule
