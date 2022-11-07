`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2022 09:27:13 AM
// Design Name: 
// Module Name: colorLUT
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


module colorLUT(
    input [1:0] twoBitColour,
    input clock,
    input reset_n,
    output logic [3:0] vgaRed,
    output logic [3:0] vgaGreen,
    output logic [3:0] vgaBlue
    );
    
    parameter [11:0] Color1 = 12'b1111_0100_0000; // 00
    parameter [11:0] Color2 = 12'b1111_1111_1111; //01
    parameter [11:0] Color3 = 12'b1111_1111_1111; //10
    parameter [11:0] Color4 = 12'b1111_1111_1111; //11
    parameter [11:0] Black = 12'b0000_0000_0000;
    parameter [11:0] White = 12'b1111_1111_1111;  
    always_ff @(posedge clock) begin
    if(!reset_n) begin
                vgaRed = Black[3:0];
                vgaBlue = Black[7:4];
                vgaGreen = Black[11:8]; 
    end else begin
    
            case(twoBitColour) //Display Logic
            2'b00: begin
                vgaRed = Color1[3:0];
                vgaBlue = Color1[7:4];
                vgaGreen = Color1[11:8];              
            end
            2'b01: begin
                vgaRed = Color2[3:0];
                vgaBlue = Color2[7:4];
                vgaGreen = Color2[11:8];            
            end
            2'b10: begin
                vgaRed = Color3[3:0];
                vgaBlue = Color3[7:4];
                vgaGreen = Color3[11:8];              
            end
            2'b11: begin
                vgaRed = Color4[3:0];
                vgaBlue = Color4[7:4];
                vgaGreen = Color4[11:8];              
            end               
            default: begin
                vgaRed = White[3:0];
                vgaBlue = White[7:4];
                vgaGreen = White[11:8]; 
            end
            endcase 
    end
    end
endmodule
