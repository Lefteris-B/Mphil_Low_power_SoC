// Generated by CIRCT firtool-1.75.0
module CompareRecFN(	// @[generators/hardfloat/hardfloat/src/main/scala/CompareRecFN.scala:42:7]
  input  [64:0] io_a,	// @[generators/hardfloat/hardfloat/src/main/scala/CompareRecFN.scala:44:16]
  input  [64:0] io_b,	// @[generators/hardfloat/hardfloat/src/main/scala/CompareRecFN.scala:44:16]
  input         io_signaling,	// @[generators/hardfloat/hardfloat/src/main/scala/CompareRecFN.scala:44:16]
  output        io_lt,	// @[generators/hardfloat/hardfloat/src/main/scala/CompareRecFN.scala:44:16]
  output        io_eq,	// @[generators/hardfloat/hardfloat/src/main/scala/CompareRecFN.scala:44:16]
  output [4:0]  io_exceptionFlags	// @[generators/hardfloat/hardfloat/src/main/scala/CompareRecFN.scala:44:16]
);

  wire        rawA_isNaN = (&(io_a[63:62])) & io_a[61];	// @[generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :53:{28,53}, :56:{33,41}]
  wire        rawB_isNaN = (&(io_b[63:62])) & io_b[61];	// @[generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :53:{28,53}, :56:{33,41}]
  wire        ordered = ~rawA_isNaN & ~rawB_isNaN;	// @[generators/hardfloat/hardfloat/src/main/scala/CompareRecFN.scala:57:{19,32,35}, generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:56:33]
  wire        bothInfs = (&(io_a[63:62])) & ~(io_a[61]) & (&(io_b[63:62])) & ~(io_b[61]);	// @[generators/hardfloat/hardfloat/src/main/scala/CompareRecFN.scala:58:33, generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :53:{28,53}, :56:41, :57:{33,36}]
  wire        bothZeros = ~(|(io_a[63:61])) & ~(|(io_b[63:61]));	// @[generators/hardfloat/hardfloat/src/main/scala/CompareRecFN.scala:59:33, generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :52:{28,53}]
  wire        eqExps = io_a[63:52] == io_b[63:52];	// @[generators/hardfloat/hardfloat/src/main/scala/CompareRecFN.scala:60:29, generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21]
  wire [52:0] _GEN = {|(io_a[63:61]), io_a[51:0]};	// @[generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :52:{28,53}, :61:{44,49}]
  wire [52:0] _GEN_0 = {|(io_b[63:61]), io_b[51:0]};	// @[generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :52:{28,53}, :61:{44,49}]
  wire        common_ltMags = $signed({1'h0, io_a[63:52]}) < $signed({1'h0, io_b[63:52]}) | eqExps & _GEN < _GEN_0;	// @[generators/hardfloat/hardfloat/src/main/scala/CompareRecFN.scala:60:29, :62:{20,33,44,57}, generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :60:27, :61:44]
  wire        common_eqMags = eqExps & _GEN == _GEN_0;	// @[generators/hardfloat/hardfloat/src/main/scala/CompareRecFN.scala:60:29, :63:{32,45}, generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:61:44]
  assign io_lt = ordered & ~bothZeros & (io_a[64] & ~(io_b[64]) | ~bothInfs & (io_a[64] & ~common_ltMags & ~common_eqMags | ~(io_b[64]) & common_ltMags));	// @[generators/hardfloat/hardfloat/src/main/scala/CompareRecFN.scala:42:7, :57:32, :58:33, :59:33, :62:33, :63:32, :66:{9,21}, :67:{25,28,41}, :68:{19,30}, :69:{35,38,54,57,74}, :70:41, :78:22, generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:57:33, :59:25]
  assign io_eq = ordered & (bothZeros | io_a[64] == io_b[64] & (bothInfs | common_eqMags));	// @[generators/hardfloat/hardfloat/src/main/scala/CompareRecFN.scala:42:7, :57:32, :58:33, :59:33, :63:32, :72:{19,34,49,62}, :79:22, generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:57:33, :59:25]
  assign io_exceptionFlags = {rawA_isNaN & ~(io_a[51]) | rawB_isNaN & ~(io_b[51]) | io_signaling & ~ordered, 4'h0};	// @[generators/hardfloat/hardfloat/src/main/scala/CompareRecFN.scala:42:7, :57:32, :75:{32,58}, :76:{27,30}, :81:34, generators/hardfloat/hardfloat/src/main/scala/common.scala:82:{46,49,56}, generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:56:33]
endmodule
