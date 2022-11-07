`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 09:33:58 AM
// Design Name: 
// Module Name: RainboxGenerator
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


module RainboxGenerator(
    input clk,
    input reset_n,
    output logic [3:0] vgaRed,
    output logic [3:0] vgaBlue,
    output logic [3:0] vgaGreen,
    input [9:0] pixX,
    input [9:0] pixY
    );
    
logic [11:0] Color;

always_ff @(posedge clk,negedge reset_n)
begin
    if(!reset_n) begin
        vgaRed = 0;
        vgaBlue= 0;
        vgaGreen= 0;
        Color = 0;
    end else begin
        vgaRed <= Color[3:0];
        vgaBlue <= Color[7:4];
        vgaGreen <= Color[11:8];
        if((pixX > 111) & (pixX < 752)) begin
            if ((pixY > 11) & (pixY < 491)) begin
                Color += 1;
            end
        end else begin
            Color = 0;
        end
    
    end
  
end
    
    
endmodule
