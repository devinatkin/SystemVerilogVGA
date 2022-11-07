`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2022 02:08:22 PM
// Design Name: 
// Module Name: TestImageOutput
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// A Basic State Machine Image Output with a basic decompression
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TestImageOutput(
    input clk,
    input reset_n,
    input VSYNC,
    output logic [3:0] vgaRed,
    output logic [3:0] vgaBlue,
    output logic [3:0] vgaGreen,
    input [9:0] pixX,
    input [9:0] pixY
    );
    
   wire [20:0] data;
   wire [11:0] address;
   wire [1:0] currentColor;
   wire en;
   
   imageMemory mem(.clka(clk),.addra(address),.douta(data)); 
   imageSequencer is_statemachine(.data(data),.en(en),.clk(clk),.reset_n(reset_n),.out(currentColor),.addressrequested(address),.VSYNC(VSYNC));
   colorLUT colorSelector(.twoBitColour(currentColor),.clock(clk),.reset_n(reset_n),.vgaRed(vgaRed),.vgaGreen(vgaGreen),.vgaBlue(vgaBlue));
   inFrame pixInFrame(.pixX(pixX),.pixY(pixY),.inFrame(en));

endmodule
