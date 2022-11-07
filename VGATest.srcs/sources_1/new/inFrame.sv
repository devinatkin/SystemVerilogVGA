`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2022 09:50:34 AM
// Design Name: 
// Module Name: inFrame
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


module inFrame(
    input [9:0] pixX,
    input [9:0] pixY,
    output logic inFrame
    );
    
    
    
    always_comb
    begin 
        if((pixX > 111) & (pixX < 752) & (pixY > 11) & (pixY < 492)) begin
            inFrame = 1;
        end else begin
            inFrame = 0;
        end
    end
    
endmodule
