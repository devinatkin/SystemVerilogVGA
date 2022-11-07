`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2022 03:21:46 PM
// Design Name: 
// Module Name: topTB
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


module topTB( );
    reg hsync;
    reg vsync;
    reg clk;

    reg [3:0] vgaRed;
    reg [3:0] vgaBlue;
    reg [3:0] vgaGreen;
    reg [0:1] sw =1;
    top uut(hsync,vsync,clk,sw,vgaRed,vgaBlue,vgaGreen);
    
    time clock_period = 10ns;

    always begin
        #(clock_period/2);
            clk = 1;
        #(clock_period/2);
            clk = 0;    
    end
    
    initial begin
        $timeformat(-9, 2, " ns");
            sw =2;
        #20;
            sw =1;
       
    end
endmodule
