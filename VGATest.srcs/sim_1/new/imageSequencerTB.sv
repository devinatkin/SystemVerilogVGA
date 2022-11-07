`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2022 11:43:20 AM
// Design Name: 
// Module Name: imageSequencerTB
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


module imageSequencerTB( );
logic [20:0] data = 0;
logic en = 1;
logic reset_n = 0;
logic clk = 0;
wire [1:0] out;
wire [11:0] address;

imageSequencer uut(.data(data),.en(en),.clk(clk),.reset_n(reset_n),.out(out),.addressrequested(address));

time clock_period = 40ns;
always begin
    #(clock_period/2);
    clk = 1;
    #(clock_period/2);
    clk = 0;    
end

initial begin
    $timeformat(-9, 2, " ns");
    reset_n = 0;
    #40;
    reset_n = 1;
    #(clock_period*900*525);
end

initial begin 
data = 21'b000_0000_0000_0000_0001_01;
#160;
data = 21'b000_0000_0000_0001_0000_10;
#400;
data = 21'b000_1000_0000_0010_0000_11;

end

endmodule
