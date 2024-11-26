// Generated by CIRCT firtool-1.75.0
module RoundAnyRawFNToRecFN_ie7_is64_oe8_os24(	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:48:5]
  input         io_in_isZero,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:58:16]
  input         io_in_sign,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:58:16]
  input  [8:0]  io_in_sExp,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:58:16]
  input  [64:0] io_in_sig,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:58:16]
  input  [2:0]  io_roundingMode,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:58:16]
  output [32:0] io_out,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:58:16]
  output [4:0]  io_exceptionFlags	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:58:16]
);

  wire        roundingMode_near_even = io_roundingMode == 3'h0;	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:90:53]
  wire [1:0]  _GEN = {io_in_sig[39], |(io_in_sig[38:0])};	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:116:66, :117:{26,60}, :164:56, :165:62, :166:36]
  wire [25:0] roundedSig = (roundingMode_near_even | io_roundingMode == 3'h4) & io_in_sig[39] | (io_roundingMode == 3'h2 & io_in_sign | io_roundingMode == 3'h3 & ~io_in_sign) & (|_GEN) ? {1'h0, io_in_sig[64:40]} + 26'h1 & {25'h1FFFFFF, ~(roundingMode_near_even & io_in_sig[39] & ~(|(io_in_sig[38:0])))} : {1'h0, io_in_sig[64:41], io_in_sig[40] | io_roundingMode == 3'h6 & (|_GEN)};	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:90:53, :92:53, :93:53, :94:53, :95:53, :98:{27,42,63,66}, :106:31, :116:66, :117:{26,60}, :164:{40,56}, :165:62, :166:36, :169:{38,67}, :170:31, :171:29, :173:16, :174:{49,57}, :175:{21,25,49,64}, :176:30, :180:47, :181:42]
  assign io_out = {io_in_sign, io_in_sExp + {7'h0, roundedSig[25:24]} + 9'h80 & ~(io_in_isZero ? 9'h1C0 : 9'h0), io_in_isZero ? 23'h0 : roundedSig[22:0]};	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:48:5, :104:25, :173:16, :185:{40,54}, :191:27, :252:24, :253:{14,18}, :280:12, :281:16, :286:33]
  assign io_exceptionFlags = {4'h0, ~io_in_isZero & (|_GEN)};	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:48:5, :164:56, :165:62, :166:36, :237:64, :240:43, :288:{53,66}]
endmodule
