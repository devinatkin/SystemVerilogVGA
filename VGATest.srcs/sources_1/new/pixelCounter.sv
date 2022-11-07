`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 09:07:28 AM
// Design Name: 
// Module Name: pixelCounter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Calculate the Pixel Number based on the HSync and VSync values
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pixelCounter(
    input pixelClk,
    input reset_n,
    input HSync,
    input VSync,
    output logic [18:0] pixelNumber,
    output logic [9:0] xpix,
    output logic [9:0] ypix
    );

logic prevHsync;
logic prevVsync;

always_ff @(posedge pixelClk)
begin
   if(!reset_n) begin
        xpix = 0;
        ypix = 0;
        pixelNumber = 0;
        prevHsync = 0;
        prevVsync = 0;
   end else if(pixelClk) begin

        if(!HSync & prevHsync) begin // Negative Edge of HSync
            xpix = 0;
            ypix = ypix + 1;
        end else begin
            xpix += 1;
        end
        
        if(!VSync & prevVsync) begin
            ypix = 0;
            pixelNumber = 0;
        end else begin
            pixelNumber += 1 ;
        end
        
        prevHsync <= HSync;
        prevVsync <= VSync;
    end
end  

//always_ff @(negedge HSync)
//begin
//    if(!HSync) begin
//        xpix = 0;
//        ypix = ypix + 1;
//    end
//end

//always_ff @(negedge VSync)
//begin
//    if(!VSync) begin
//        ypix = 0;
//        pixelNumber = 0;
//    end
//end

endmodule
