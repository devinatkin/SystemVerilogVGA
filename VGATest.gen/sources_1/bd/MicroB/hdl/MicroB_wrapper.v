//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue Nov  1 13:12:21 2022
//Host        : Hephaestus running 64-bit major release  (build 9200)
//Command     : generate_target MicroB_wrapper.bd
//Design      : MicroB_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MicroB_wrapper
   (CLK100MHZ,
    CLK_LOCKED,
    inputs,
    outputs,
    reset_rtl_0,
    rx,
    tx);
  input CLK100MHZ;
  input CLK_LOCKED;
  input [31:0]inputs;
  output [31:0]outputs;
  input reset_rtl_0;
  input rx;
  output tx;

  wire CLK100MHZ;
  wire CLK_LOCKED;
  wire [31:0]inputs;
  wire [31:0]outputs;
  wire reset_rtl_0;
  wire rx;
  wire tx;

  MicroB MicroB_i
       (.CLK100MHZ(CLK100MHZ),
        .CLK_LOCKED(CLK_LOCKED),
        .inputs(inputs),
        .outputs(outputs),
        .reset_rtl_0(reset_rtl_0),
        .rx(rx),
        .tx(tx));
endmodule
