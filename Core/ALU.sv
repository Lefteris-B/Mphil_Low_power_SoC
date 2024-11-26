// Generated by CIRCT firtool-1.75.0
module ALU(	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:83:7]
  input         io_dw,	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:72:14]
  input  [4:0]  io_fn,	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:72:14]
  input  [63:0] io_in2,	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:72:14]
  input  [63:0] io_in1,	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:72:14]
  output [63:0] io_out,	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:72:14]
  output [63:0] io_adder_out,	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:72:14]
  output        io_cmp_out	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:72:14]
);

  wire [63:0] in2_inv = {64{io_fn[3]}} ^ io_in2;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:58:29, :85:20]
  wire [63:0] in1_xor_in2 = io_in1 ^ in2_inv;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:85:20, :86:28]
  wire [63:0] _io_adder_out_T_3 = io_in1 + in2_inv + {63'h0, io_fn[3]};	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:58:29, :85:20, :88:{26,36}]
  wire        slt = io_in1[63] == io_in2[63] ? _io_adder_out_T_3[63] : io_fn[1] ? io_in2[63] : io_in1[63];	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:61:35, :88:{26,36}, :92:{8,15,24,34,56}, :93:8]
  wire [31:0] shin_hi = io_dw ? io_in1[63:32] : {32{io_fn[3] & io_in1[31]}};	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:58:29, :101:{28,46,55}, :102:{24,48}]
  wire        _shout_T = io_fn == 5'h5;	// @[generators/rocket-chip/src/main/scala/util/package.scala:16:47]
  wire        _shout_T_1 = io_fn == 5'hB;	// @[generators/rocket-chip/src/main/scala/util/package.scala:16:47]
  wire        _bext_mask_T = io_fn == 5'h13;	// @[generators/rocket-chip/src/main/scala/util/package.scala:16:47]
  wire [31:0] _GEN = {io_in1[31:16], 16'h0} | shin_hi & 32'hFFFF;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:102:24, :106:46]
  wire [31:0] _GEN_0 = {{io_in1[15:0], _GEN[31:24]} & 24'hFF00FF, 8'h0} | _GEN & 32'hFF00FF;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:106:46]
  wire [31:0] _GEN_1 = {{io_in1[7:0], _GEN_0[31:12]} & 28'hF0F0F0F, 4'h0} | _GEN_0 & 32'hF0F0F0F;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:106:46]
  wire [45:0] _GEN_2 = {io_in1[3:0], _GEN_1, _GEN_0[7:4], _GEN[11:8], _GEN[15:14]} & 46'h333333333333;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:106:46]
  wire [31:0] _GEN_3 = _GEN_2[45:14] | _GEN_1 & 32'h33333333;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:106:46]
  wire [1:0]  _GEN_4 = _GEN_2[11:10] | _GEN_0[5:4];	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:106:46]
  wire [7:0]  _GEN_5 = {_GEN_2[5:0], 2'h0} | {_GEN[15:12], shin_hi[19:16]} & 8'h33;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:102:24, :106:46]
  wire [54:0] _GEN_6 = {io_in1[1:0], _GEN_3, _GEN_1[3:2], _GEN_4, _GEN_0[7:6], _GEN[9:8], _GEN_5, shin_hi[19:18], shin_hi[21:20], shin_hi[23]} & 55'h55555555555555;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:102:24, :106:46]
  wire [63:0] shin = _shout_T | _shout_T_1 | io_fn == 5'h12 | _bext_mask_T ? {shin_hi, io_in1[31:0]} : {io_in1[0], _GEN_6[54:23] | _GEN_3 & 32'h55555555, _GEN_3[1], _GEN_6[21] | _GEN_1[2], {_GEN_1[3], 1'h0} | _GEN_4 & 2'h1, _GEN_6[18:15] | {_GEN_0[7:6], _GEN[9:8]} & 4'h5, _GEN_6[14:7] | _GEN_5 & 8'h55, _GEN_5[1], _GEN_6[5] | shin_hi[18], shin_hi[19], shin_hi[20], {_GEN_6[2:0], 1'h0} | {shin_hi[23:22], shin_hi[25:24]} & 4'h5, shin_hi[25], shin_hi[26], shin_hi[27], shin_hi[28], shin_hi[29], shin_hi[30], shin_hi[31]};	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:102:24, :104:{18,34}, :106:{17,46}, generators/rocket-chip/src/main/scala/util/package.scala:16:47, :81:59]
  wire [64:0] _shout_r_T_5 = $signed($signed({io_fn[3] & shin[63], shin}) >>> {59'h0, io_in2[5] & io_dw, io_in2[4:0]});	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:58:29, :103:{29,33,60}, :106:17, :107:{21,35,41,64}]
  wire [37:0] _GEN_7 = {_shout_r_T_5[11:8], _shout_r_T_5[15:12], _shout_r_T_5[19:16], _shout_r_T_5[23:20], _shout_r_T_5[27:24], _shout_r_T_5[31:28], _shout_r_T_5[35:32], _shout_r_T_5[39:36], _shout_r_T_5[43:40], _shout_r_T_5[47:46]} & 38'h3333333333;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:107:{64,73}, :108:24]
  wire [7:0]  _GEN_8 = _GEN_7[37:30] | {_shout_r_T_5[15:12], _shout_r_T_5[19:16]} & 8'h33;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:107:64, :108:24]
  wire [1:0]  _GEN_9 = _GEN_7[27:26] | _shout_r_T_5[21:20];	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:107:64, :108:24]
  wire [7:0]  _GEN_10 = _GEN_7[21:14] | {_shout_r_T_5[31:28], _shout_r_T_5[35:32]} & 8'h33;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:107:{64,73}, :108:24]
  wire [1:0]  _GEN_11 = _GEN_7[11:10] | _shout_r_T_5[37:36];	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:107:64, :108:24]
  wire [7:0]  _GEN_12 = {_GEN_7[5:0], 2'h0} | {_shout_r_T_5[47:44], _shout_r_T_5[51:48]} & 8'h33;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:107:64, :108:24]
  wire [50:0] _GEN_13 = {_shout_r_T_5[5:4], _shout_r_T_5[7:6], _shout_r_T_5[9:8], _GEN_8, _shout_r_T_5[19:18], _GEN_9, _shout_r_T_5[23:22], _shout_r_T_5[25:24], _GEN_10, _shout_r_T_5[35:34], _GEN_11, _shout_r_T_5[39:38], _shout_r_T_5[41:40], _GEN_12, _shout_r_T_5[51:50], _shout_r_T_5[53:52], _shout_r_T_5[55]} & 51'h5555555555555;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:107:64, :108:24]
  wire        _logic_T_8 = io_fn == 5'h6;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:119:45]
  wire        _logic_T_11 = io_fn == 5'h19;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:119:64]
  wire [63:0] out = io_fn == 5'hA | io_fn == 5'h0 ? _io_adder_out_T_3 : {63'h0, io_fn > 5'hB & ~(io_fn[4]) & slt} | (io_fn == 5'h4 | _logic_T_8 | _logic_T_11 | io_fn == 5'h1A ? in1_xor_in2 : 64'h0) | (_logic_T_8 | io_fn == 5'h7 | _logic_T_11 | io_fn == 5'h18 ? io_in1 & in2_inv : 64'h0) | (_shout_T | _shout_T_1 | _bext_mask_T ? _shout_r_T_5[63:0] : 64'h0) | (io_fn == 5'h1 ? {_shout_r_T_5[0], _shout_r_T_5[1], _shout_r_T_5[2], _shout_r_T_5[3], _shout_r_T_5[4], _GEN_13[50:47] | {_shout_r_T_5[7:6], _shout_r_T_5[9:8]} & 4'h5, _GEN_13[46:39] | _GEN_8 & 8'h55, _GEN_8[1], _GEN_13[37] | _shout_r_T_5[18], {_shout_r_T_5[19], 1'h0} | _GEN_9 & 2'h1, _GEN_13[34:31] | {_shout_r_T_5[23:22], _shout_r_T_5[25:24]} & 4'h5, _GEN_13[30:23] | _GEN_10 & 8'h55, _GEN_10[1], _GEN_13[21] | _shout_r_T_5[34], {_shout_r_T_5[35], 1'h0} | _GEN_11 & 2'h1, _GEN_13[18:15] | {_shout_r_T_5[39:38], _shout_r_T_5[41:40]} & 4'h5, _GEN_13[14:7] | _GEN_12 & 8'h55, _GEN_12[1], _GEN_13[5] | _shout_r_T_5[50], _shout_r_T_5[51], _shout_r_T_5[52], {_GEN_13[2:0], 1'h0} | {_shout_r_T_5[55:54], _shout_r_T_5[57:56]} & 4'h5, _shout_r_T_5[57], _shout_r_T_5[58], _shout_r_T_5[59], _shout_r_T_5[60], _shout_r_T_5[61], _shout_r_T_5[62], _shout_r_T_5[63]} : 64'h0);	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:59:{31,41,48}, :85:20, :86:28, :87:28, :88:{26,36}, :92:8, :107:{64,73}, :108:24, :109:{18,35,55,91}, :110:{18,25}, :119:{18,25,36,45,55,64,75,84,115}, :120:{18,35,44,55,75,84}, :123:{36,44,52}, :161:47, generators/rocket-chip/src/main/scala/util/package.scala:16:47]
  assign io_out = io_dw ? out : {{32{out[31]}}, out[31:0]};	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:83:7, :161:47, :175:10, :178:{28,37,43,48,56,66}]
  assign io_adder_out = _io_adder_out_T_3;	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:83:7, :88:{26,36}]
  assign io_cmp_out = io_fn[0] ^ (io_fn[3] ? slt : in1_xor_in2 == 64'h0);	// @[generators/rocket-chip/src/main/scala/rocket/ALU.scala:58:29, :62:35, :83:7, :86:28, :92:8, :94:{36,41,68}]
endmodule
