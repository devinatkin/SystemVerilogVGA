`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: - Atkin -
// Engineer: Devin Atkin
// 
// Create Date: 11/01/2022 09:46:31 AM
// Design Name: VGA_Output Module
// Module Name: VGA_Module
// Project Name: 
// Target Devices: Artic 7 (Basys 3)
// Tool Versions: 
// Description: Generates HSync, VSync and ensures that VGA Requirements are met for the output
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module VGA_Module(
    input CLK25,
    input reset_n,
    input test,
    input [3:0] red_in,
    input [3:0] green_in,
    input [3:0] blue_in,
    output HSync,
    output VSync,
    output logic [3:0] VGA_RED,
    output logic [3:0] VGA_GREEN,
    output logic [3:0] VGA_BLUE,
    output [9:0] Xcor,
    output [9:0] Ycor,
    output [18:0] Pix_Val
    );
    
    logic [3:0] vgaRed_Test;
    logic [3:0] vgaGreen_Test;
    logic [3:0] vgaBlue_Test;
    
     wire [18:0] pixNum;
     wire [9:0] xpix;
     wire [9:0] ypix;
    
     wire HSync_i;
     wire VSync_i;
     wire en;
     
    assign HSync = HSync_i;
    assign VSync = VSync_i;
    assign Xcor = xpix;
    assign Ycor = ypix;
    assign Pix_Val = pixNum;
    
    inFrame pixInFrame(.pixX(xpix),.pixY(ypix),.inFrame(en));
    
    vgaSync vgaS (
        .hsync(HSync_i),
        .vsync(VSync_i),
        .clk25(CLK25),
        .reset_n(reset_n));
    
    pixelCounter pixelCounter(
    .pixelClk(CLK25),
    .reset_n(reset_n),
    .HSync(HSync_i),
    .VSync(VSync_i),
    .pixelNumber(pixNum),
    .xpix(xpix),
    .ypix(ypix)
    );
    
//    RainboxGenerator testPattern(
//    .clk(CLK25),
//    .reset_n(reset_n),
//    .vgaRed(vgaRed_Test),
//    .vgaBlue(vgaBlue_Test),
//    .vgaGreen(vgaGreen_Test),
//    .pixX(xpix),
//    .pixY(ypix)
//    );
    
    TestImageOutput testPattern(
    .clk(CLK25),
    .reset_n(reset_n),
    .VSYNC(VSync_i),
    .vgaRed(vgaRed_Test),
    .vgaBlue(vgaBlue_Test),
    .vgaGreen(vgaGreen_Test),
    .pixX(xpix),
    .pixY(ypix)
    );
    
always_ff @(posedge CLK25,negedge reset_n)
begin
    if(!reset_n) begin
        VGA_RED = 0;
        VGA_GREEN= 0;
        VGA_BLUE= 0;
        
    end else begin
        
        if(en) begin
            if (test) begin
                VGA_RED = vgaRed_Test;
                VGA_GREEN= vgaBlue_Test;
                VGA_BLUE= vgaGreen_Test;     
            end else begin
                VGA_RED = red_in;
                VGA_GREEN= green_in;
                VGA_BLUE= blue_in;
            end
        end else begin
            VGA_RED = 0;
            VGA_GREEN= 0;
            VGA_BLUE= 0;

        end
    
    end
  
end
    
endmodule
