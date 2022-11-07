`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2022 09:59:39 AM
// Design Name: 
// Module Name: VGA_ModuleTB
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


module VGA_ModuleTB();
    time clock_period = 40ns;
    reg hsync;
    reg vsync;
    reg clk;
    reg reset_n = 0;
    reg test = 0;
    
    reg [3:0] vgaRed;
    reg [3:0] vgaBlue;
    reg [3:0] vgaGreen;
    
      wire [18:0] pixNum;
      wire [9:0] xpix;
      wire [9:0] ypix;
    
   VGA_Module uut(
    .CLK25(clk),
    .reset_n(reset_n),
    .test(test),
    .red_in(1),
    .green_in(2),
    .blue_in(3),
    .HSync(hsync),
    .VSync(vsync),
    .VGA_RED(vgaRed),
    .VGA_GREEN(vgaGreen),
    .VGA_BLUE(vgaBlue),
    .Xcor(xpix),
    .Ycor(ypix),
    .Pix_Val(pixNum)
    );
    
    always begin
        #(clock_period/2);
            clk = 1;
        #(clock_period/2);
            clk = 0;    
    end
    
    initial begin
        $timeformat(-9, 2, " ns");
            reset_n =0;
        #40;
            reset_n =1;
       
    end
endmodule
