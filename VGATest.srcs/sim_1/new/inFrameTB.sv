`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2022 10:00:27 AM
// Design Name: 
// Module Name: inFrameTB
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


module inFrameTB();

logic [10:0] pixX=0;
logic [9:0] pixY=0;
int pixelCount = 0;
int pixelsInLine = 0;
wire InFrame;
reg clk;

time clock_period = 10ns;

always begin
    #(clock_period/2);
        clk = 1;
    #(clock_period/2);
        clk = 0;    
end

inFrame uut(pixX,pixY,InFrame);

always@(posedge clk) begin
    if(pixX == 799) begin
        pixX = 0;
        if(pixelsInLine > 0) begin
            assert(pixelsInLine ==640)
                else $error("Pixels In Line ",pixelsInLine);
        end 
         
        pixelsInLine = 0;
        if(pixY == 524) begin
            pixY = 0;
            assert(pixelCount == 307200)
                else $error("Pixels in Frame ",pixelCount);

            pixelCount = 0;
        end else begin
            pixY += 1;
        end
    end else begin
        pixX += 1;
    end
    
    if(InFrame) begin
        pixelCount += 1;
        pixelsInLine += 1;
    end
    
    end
endmodule
