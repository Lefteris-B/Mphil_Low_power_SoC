// Generated by CIRCT firtool-1.75.0

// Users can define 'STOP_COND' to add an extra gate to stop conditions.
`ifndef STOP_COND_
  `ifdef STOP_COND
    `define STOP_COND_ (`STOP_COND)
  `else  // STOP_COND
    `define STOP_COND_ 1
  `endif // STOP_COND
`endif // not def STOP_COND_

// Users can define 'ASSERT_VERBOSE_COND' to add an extra gate to assert error printing.
`ifndef ASSERT_VERBOSE_COND_
  `ifdef ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ (`ASSERT_VERBOSE_COND)
  `else  // ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ 1
  `endif // ASSERT_VERBOSE_COND
`endif // not def ASSERT_VERBOSE_COND_

// Include register initializers in init blocks unless synthesis is set
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_REG_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_REG_INIT
`endif // not def RANDOMIZE
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_REG_
    `define ENABLE_INITIAL_REG_
  `endif // not def ENABLE_INITIAL_REG_
`endif // not def SYNTHESIS

// Standard header to adapt well known macros for register randomization.

// RANDOM may be set to an expression that produces a 32-bit random unsigned value.
`ifndef RANDOM
  `define RANDOM $random
`endif // not def RANDOM

// Users can define INIT_RANDOM as general code that gets injected into the
// initializer block for modules with registers.
`ifndef INIT_RANDOM
  `define INIT_RANDOM
`endif // not def INIT_RANDOM

// If using random initialization, you can also define RANDOMIZE_DELAY to
// customize the delay used, otherwise 0.002 is used.
`ifndef RANDOMIZE_DELAY
  `define RANDOMIZE_DELAY 0.002
`endif // not def RANDOMIZE_DELAY

// Define INIT_RANDOM_PROLOG_ for use in our modules below.
`ifndef INIT_RANDOM_PROLOG_
  `ifdef RANDOMIZE
    `ifdef VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM
    `else  // VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM #`RANDOMIZE_DELAY begin end
    `endif // VERILATOR
  `else  // RANDOMIZE
    `define INIT_RANDOM_PROLOG_
  `endif // RANDOMIZE
`endif // not def INIT_RANDOM_PROLOG_
module SinkD(	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
  input         clock,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
  input         reset,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
  output        io_resp_valid,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  output        io_resp_bits_last,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  output [2:0]  io_resp_bits_opcode,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  output [2:0]  io_resp_bits_param,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  output [2:0]  io_resp_bits_source,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  output [2:0]  io_resp_bits_sink,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  output        io_resp_bits_denied,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  output        io_d_ready,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  input         io_d_valid,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  input  [2:0]  io_d_bits_opcode,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  input  [1:0]  io_d_bits_param,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  input  [2:0]  io_d_bits_size,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  input  [2:0]  io_d_bits_source,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  input  [2:0]  io_d_bits_sink,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  input         io_d_bits_denied,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  input  [63:0] io_d_bits_data,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  input         io_d_bits_corrupt,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  output [2:0]  io_source,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  input  [2:0]  io_way,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  input  [9:0]  io_set,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  input         io_bs_adr_ready,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  output        io_bs_adr_valid,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  output        io_bs_adr_bits_noop,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  output [2:0]  io_bs_adr_bits_way,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  output [9:0]  io_bs_adr_bits_set,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  output [2:0]  io_bs_adr_bits_beat,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  output [63:0] io_bs_dat_data,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  output [9:0]  io_grant_req_set,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  output [2:0]  io_grant_req_way,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
  input         io_grant_safe	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:36:14]
);

  wire        d_q_io_deq_ready;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:63:30]
  wire        _d_q_io_deq_valid;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire [2:0]  _d_q_io_deq_bits_opcode;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire [1:0]  _d_q_io_deq_bits_param;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire [2:0]  _d_q_io_deq_bits_size;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire [2:0]  _d_q_io_deq_bits_source;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire        _d_q_io_deq_bits_denied;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire        _d_q_io_deq_bits_corrupt;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire        _io_resp_valid_T_1 = d_q_io_deq_ready & _d_q_io_deq_valid;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:63:30, src/main/scala/chisel3/util/Decoupled.scala:51:35, :362:21]
  wire [12:0] _r_beats1_decode_T = 13'h3F << _d_q_io_deq_bits_size;	// @[generators/rocket-chip/src/main/scala/util/package.scala:243:71, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire [2:0]  r_beats1 = _d_q_io_deq_bits_opcode[0] ? ~(_r_beats1_decode_T[5:3]) : 3'h0;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:106:36, :221:14, generators/rocket-chip/src/main/scala/util/package.scala:243:{46,71,76}, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  reg  [2:0]  r_counter;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27]
  wire [2:0]  _r_counter1_T = r_counter - 3'h1;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27, :230:28]
  wire        last = r_counter == 3'h1 | r_beats1 == 3'h0;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:221:14, :229:27, :232:{25,33,43}]
  wire [2:0]  beat = r_beats1 & ~_r_counter1_T;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:221:14, :230:28, :234:{25,27}]
  reg  [2:0]  io_source_r;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:57:53]
  assign d_q_io_deq_ready = io_bs_adr_ready & ((|r_counter) | io_grant_safe);	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:63:{30,41}, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27, :231:25]
  reg  [2:0]  io_bs_adr_bits_beat_r;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:78:54]
  `ifndef SYNTHESIS	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:82:10]
    always @(posedge clock) begin	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:82:10]
      if (~reset & _d_q_io_deq_valid & _d_q_io_deq_bits_corrupt & ~_d_q_io_deq_bits_denied) begin	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:82:{10,21,39,42}, src/main/scala/chisel3/util/Decoupled.scala:362:21]
        if (`ASSERT_VERBOSE_COND_)	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:82:10]
          $error("Assertion failed: Data poisoning unsupported\n    at SinkD.scala:82 assert (!(d.valid && d.bits.corrupt && !d.bits.denied), \"Data poisoning unsupported\")\n");	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:82:10]
        if (`STOP_COND_)	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:82:10]
          $fatal;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:82:10]
      end
    end // always @(posedge)
  `endif // not def SYNTHESIS
  always @(posedge clock) begin	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
    if (reset)	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
      r_counter <= 3'h0;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27]
    else if (_io_resp_valid_T_1)	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35]
      r_counter <= (|r_counter) ? _r_counter1_T : r_beats1;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:221:14, :229:27, :230:28, :231:25, :236:21]
    if (_d_q_io_deq_valid) begin	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
      io_source_r <= _d_q_io_deq_bits_source;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:57:53, src/main/scala/chisel3/util/Decoupled.scala:362:21]
      io_bs_adr_bits_beat_r <= beat + {2'h0, io_bs_adr_ready};	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:78:{54,60}, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:234:25]
    end
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
      `FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:0];	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
    initial begin	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
        `INIT_RANDOM_PROLOG_	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
        _RANDOM[/*Zero width*/ 1'b0] = `RANDOM;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
        r_counter = _RANDOM[/*Zero width*/ 1'b0][2:0];	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27]
        io_source_r = _RANDOM[/*Zero width*/ 1'b0][5:3];	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7, :57:53, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27]
        io_bs_adr_bits_beat_r = _RANDOM[/*Zero width*/ 1'b0][8:6];	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7, :78:54, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
      `FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  Queue2_TLBundleD_a32d64s3k3z3c d_q (	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
    .clock               (clock),
    .reset               (reset),
    .io_enq_ready        (io_d_ready),
    .io_enq_valid        (io_d_valid),
    .io_enq_bits_opcode  (io_d_bits_opcode),
    .io_enq_bits_param   (io_d_bits_param),
    .io_enq_bits_size    (io_d_bits_size),
    .io_enq_bits_source  (io_d_bits_source),
    .io_enq_bits_sink    (io_d_bits_sink),
    .io_enq_bits_denied  (io_d_bits_denied),
    .io_enq_bits_data    (io_d_bits_data),
    .io_enq_bits_corrupt (io_d_bits_corrupt),
    .io_deq_ready        (d_q_io_deq_ready),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:63:30]
    .io_deq_valid        (_d_q_io_deq_valid),
    .io_deq_bits_opcode  (_d_q_io_deq_bits_opcode),
    .io_deq_bits_param   (_d_q_io_deq_bits_param),
    .io_deq_bits_size    (_d_q_io_deq_bits_size),
    .io_deq_bits_source  (_d_q_io_deq_bits_source),
    .io_deq_bits_sink    (io_resp_bits_sink),
    .io_deq_bits_denied  (_d_q_io_deq_bits_denied),
    .io_deq_bits_data    (io_bs_dat_data),
    .io_deq_bits_corrupt (_d_q_io_deq_bits_corrupt)
  );	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign io_resp_valid = (~(|r_counter) | last) & _io_resp_valid_T_1;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7, :62:{27,36}, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27, :231:25, :232:33, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  assign io_resp_bits_last = last;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:232:33]
  assign io_resp_bits_opcode = _d_q_io_deq_bits_opcode;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign io_resp_bits_param = {1'h0, _d_q_io_deq_bits_param};	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7, :70:23, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign io_resp_bits_source = _d_q_io_deq_bits_source;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign io_resp_bits_denied = _d_q_io_deq_bits_denied;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign io_source = _d_q_io_deq_valid ? _d_q_io_deq_bits_source : io_source_r;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7, :57:{19,53}, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign io_bs_adr_valid = (|r_counter) | _d_q_io_deq_valid & io_grant_safe;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7, :64:{29,41}, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27, :231:25, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign io_bs_adr_bits_noop = ~_d_q_io_deq_valid | ~(_d_q_io_deq_bits_opcode[0]);	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7, :75:{26,35,38}, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:106:36, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign io_bs_adr_bits_way = io_way;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
  assign io_bs_adr_bits_set = io_set;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
  assign io_bs_adr_bits_beat = _d_q_io_deq_valid ? beat : io_bs_adr_bits_beat_r;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7, :78:{29,54}, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:234:25, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign io_grant_req_set = io_set;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
  assign io_grant_req_way = io_way;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkD.scala:34:7]
endmodule

