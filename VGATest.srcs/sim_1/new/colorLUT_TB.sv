`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2022 01:44:44 PM
// Design Name: 
// Module Name: colorLUT_TB
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


module colorLUT_TB();
    logic clk;
    logic [3:0] vgaRed;
    logic [3:0] vgaBlue;
    logic [3:0] vgaGreen;
    logic [1:0] currentColor = 0;
colorLUT colorSelector(.twoBitColour(currentColor),.vgaRed(vgaRed),.vgaGreen(vgaGreen),.vgaBlue(vgaBlue));

time clock_period = 40ns;

always begin
    #(clock_period/2);
    clk = 1;
    #(clock_period/2);
    clk = 0;    
end

always @(posedge clk) begin
    currentColor += 1;
end

endmodule
