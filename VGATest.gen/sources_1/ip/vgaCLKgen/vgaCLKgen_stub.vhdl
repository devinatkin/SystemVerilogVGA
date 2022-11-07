-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Nov  4 13:35:23 2022
-- Host        : Hephaestus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/devin/VGATest/VGATest.gen/sources_1/ip/vgaCLKgen/vgaCLKgen_stub.vhdl
-- Design      : vgaCLKgen
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vgaCLKgen is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_out100 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk : in STD_LOGIC
  );

end vgaCLKgen;

architecture stub of vgaCLKgen is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_out100,reset,locked,clk";
begin
end;
