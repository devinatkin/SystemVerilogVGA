// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Nov  1 14:02:33 2022
// Host        : Hephaestus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ imageMemory_sim_netlist.v
// Design      : imageMemory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imageMemory,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [20:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [20:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [20:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [20:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "4" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.359383 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "imageMemory.mem" *) 
  (* C_INIT_FILE_NAME = "imageMemory.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2796" *) 
  (* C_READ_DEPTH_B = "2796" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "21" *) 
  (* C_READ_WIDTH_B = "21" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2796" *) 
  (* C_WRITE_DEPTH_B = "2796" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "21" *) 
  (* C_WRITE_WIDTH_B = "21" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[20:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[20:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 57536)
`pragma protect data_block
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
XzlMzeAekQyyGiGgltrzkEHAi0ABQrY=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
