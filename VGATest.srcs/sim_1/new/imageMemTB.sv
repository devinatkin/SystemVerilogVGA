`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2022 11:21:29 AM
// Design Name: 
// Module Name: imageMemTB
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


module imageMemTB( );

time clock_period = 40ns;
reg clk;

wire [20:0] data;
logic [11:0] address = 0;

imageMemory memut(.clka(clk),.addra(address),.douta(data)); 

always begin
    #(clock_period/2);
    clk = 1;
    #(clock_period/2);
    clk = 0;    
end

always begin 
    #(clock_period*4);
    address += 1;
end


endmodule
