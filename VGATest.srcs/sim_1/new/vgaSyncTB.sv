`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 05:41:13 PM
// Design Name: 
// Module Name: vgaSyncTB
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


module vgaSyncTB();
    reg hsync;
    reg vsync;
    reg clk;
    reg reset_n=0;

vgaSync uut (
.hsync(hsync),
.vsync(vsync),
.clk25(clk),
.reset_n(reset_n));


time clock_period = 40ns;

time hsync_per_lasthigh = 0;
time hsync_period = 0;

time hsync_pulse_laststarted = 0;
time hsync_pulse_length = 0;
bit hsyncStarted= 0;

time vsync_per_lasthigh = 0;
time vsync_period = 0;

time vsync_pulse_laststarted = 0;
time vsync_pulse_length = 0;
bit vsyncStarted= 0;

always begin
    #(clock_period/2);
    clk = 1;
    #(clock_period/2);
    clk = 0;    
end

always@(negedge hsync)
begin
    hsync_pulse_laststarted = $time;
end


always @(posedge hsync)
begin
    
    hsync_period = $time - hsync_per_lasthigh;
    hsync_per_lasthigh = $time;
    if(hsyncStarted)begin
        hsync_pulse_length = $time - hsync_pulse_laststarted;

        assert(hsync_pulse_length ===3840)
            else $error("HSYNC Pulse length %t",hsync_pulse_length);
        
        
        assert (hsync_period === 32000) 
            else $error("HSYNC PERIOD INCORRECT %0t", hsync_period);
    end
    
    hsyncStarted = 1;
end

always@(negedge vsync)
begin
    vsync_pulse_laststarted = $time;
end


always @(posedge vsync)
begin
    
    vsync_period = $time - vsync_per_lasthigh;
    vsync_per_lasthigh = $time;
    if(vsyncStarted)begin
        vsync_pulse_length = $time - vsync_pulse_laststarted;

        assert(vsync_pulse_length ==64000)
            else $error("VSYNC Pulse length %t",vsync_pulse_length);
    
        assert (vsync_period === 16800000)
            else $error("VSYNC PERIOD INCORRECT %0t", vsync_period);
    end
    
    vsyncStarted = 1;
end


initial begin
    $timeformat(-9, 2, " ns");
    reset_n = 0;
    #20;
    reset_n = 1;
    #(clock_period*900*525);
end

endmodule
