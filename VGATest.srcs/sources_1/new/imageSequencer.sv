`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2022 03:04:01 PM
// Design Name: 
// Module Name: imageSequencer
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


module imageSequencer(
    input [20:0] data, //Data Recieved in the Format (Pixels in a Row [20:2], Pixel Colour [1:0]
    input en, //count this clock cycle to reduce the internal pixel count
    input clk, //CLK this should be a 25MHz clk
    input reset_n, //Reset Negative
    output logic [1:0] out, //The pixel Colour But for however many cycles (Doesn't follow input until it loads a new value)
    output logic [11:0] addressrequested, //The Requested Address
    input VSYNC
    );
    
    parameter max_Address = 2786;
    logic [20:0] pixelCount = 0;
    logic [20:0] nextDataValue;
    logic [18:0] pixelsRemaining;
always_ff @(posedge clk)
begin 
if (!reset_n | !VSYNC) begin //Reset Everything
    nextDataValue = 0;
    pixelsRemaining = 1; //Give one Clock Cycle to Load the Next Value of Daa
    addressrequested = 0;
    out = 0;
    pixelCount = 0;
end else begin // Clocked Process
    nextDataValue = data;
    if (pixelsRemaining == 0) begin
        out =  nextDataValue[1:0];
        pixelCount += nextDataValue[20:2];
        if(en) begin
            pixelsRemaining = nextDataValue[20:2] -1;
        end else begin
            pixelsRemaining = nextDataValue[20:2];
        end
        if(addressrequested != max_Address) begin //Increment and Loop The Requested Address
            addressrequested += 1;
        end else begin
            addressrequested = 0;
            $display("Pixels In Frame",pixelCount);
            pixelCount = 0;
            
        end
    end else begin
        if(en) begin
        pixelsRemaining = pixelsRemaining - 1;
        end
    end
    
end
  
end  
endmodule
