// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps

module myproject_axi_lshr_32s_6ns_32_1_1
#(parameter
    ID = 1,             // core ID, unused in RTL
    din0_WIDTH = 32,   // data bitwidth
    din1_WIDTH = 32,     // shift control bitwidth
    dout_WIDTH = 32,   // output bitwidth
    OP = 1,             // opcode: 0-shl, 1-lshr, 2-ashr
    NUM_STAGE = 1       // stage number
)(
    input  wire [din0_WIDTH-1:0] din0,
    input  wire [din0_WIDTH-1:0] din1,
    output reg  [dout_WIDTH-1:0] dout
);

//------------------------Local signal-------------------
wire [din1_WIDTH-1:0] din1_cast;

//------------------------Body---------------------------
assign din1_cast = $unsigned(din1[din1_WIDTH-1:0]);

always @* begin
    case (OP)
        0: dout = din0<<din1_cast;
        1: dout = din0>>din1_cast;
        2: dout = $signed(din0)>>>din1_cast;
        default: dout = {dout_WIDTH{1'b0}};
    endcase
end

endmodule
