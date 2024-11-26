// Generated by CIRCT firtool-1.75.0

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
module AsyncQueueSource_Phit_TestHarness_UNIQUIFIED(	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
  input         clock,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
  input         reset,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
  output        io_enq_ready,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  input         io_enq_valid,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  input  [31:0] io_enq_bits_phit,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output [31:0] io_async_mem_0_phit,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output [31:0] io_async_mem_1_phit,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output [31:0] io_async_mem_2_phit,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output [31:0] io_async_mem_3_phit,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output [31:0] io_async_mem_4_phit,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output [31:0] io_async_mem_5_phit,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output [31:0] io_async_mem_6_phit,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output [31:0] io_async_mem_7_phit,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  input  [3:0]  io_async_ridx,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output [3:0]  io_async_widx,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  input         io_async_safe_ridx_valid,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output        io_async_safe_widx_valid,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output        io_async_safe_source_reset_n,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  input         io_async_safe_sink_reset_n	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
);

  wire        io_enq_ready_0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:91:29]
  wire        _sink_valid_io_out;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:106:30]
  wire        _sink_extend_io_out;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:105:30]
  wire        _source_valid_0_io_out;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:102:32]
  wire [3:0]  _ridx_ridx_gray_io_q;	// @[generators/rocket-chip/src/main/scala/util/ShiftReg.scala:45:23]
  reg  [31:0] mem_0_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
  reg  [31:0] mem_1_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
  reg  [31:0] mem_2_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
  reg  [31:0] mem_3_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
  reg  [31:0] mem_4_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
  reg  [31:0] mem_5_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
  reg  [31:0] mem_6_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
  reg  [31:0] mem_7_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
  wire        _widx_T_1 = io_enq_ready_0 & io_enq_valid;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:91:29, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  reg  [3:0]  widx_widx_bin;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25]
  reg         ready_reg;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:90:56]
  assign io_enq_ready_0 = ready_reg & _sink_valid_io_out;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:90:56, :91:29, :106:30]
  reg  [3:0]  widx_gray;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:93:55]
  wire [2:0]  index = widx_gray[2:0] ^ {widx_gray[3], 2'h0};	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:87:{52,64,80,93}, :93:55]
  always @(posedge clock) begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
    if (_widx_T_1 & index == 3'h0)	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16, :87:64, :88:{22,35}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
      mem_0_phit <= io_enq_bits_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
    if (_widx_T_1 & index == 3'h1)	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16, :87:64, :88:{22,35}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
      mem_1_phit <= io_enq_bits_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
    if (_widx_T_1 & index == 3'h2)	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16, :87:64, :88:{22,35}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
      mem_2_phit <= io_enq_bits_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
    if (_widx_T_1 & index == 3'h3)	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16, :87:64, :88:{22,35}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
      mem_3_phit <= io_enq_bits_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
    if (_widx_T_1 & index == 3'h4)	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16, :87:64, :88:{22,35}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
      mem_4_phit <= io_enq_bits_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
    if (_widx_T_1 & index == 3'h5)	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16, :87:64, :88:{22,35}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
      mem_5_phit <= io_enq_bits_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
    if (_widx_T_1 & index == 3'h6)	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16, :87:64, :88:{22,35}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
      mem_6_phit <= io_enq_bits_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
    if (_widx_T_1 & (&index))	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16, :87:64, :88:{22,35}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
      mem_7_phit <= io_enq_bits_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
  end // always @(posedge)
  wire [3:0]  widx_incremented = _sink_valid_io_out ? widx_widx_bin + {3'h0, _widx_T_1} : 4'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :53:{23,43}, :70:7, :106:30, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  wire [3:0]  widx = {widx_incremented[3], widx_incremented[2:0] ^ widx_incremented[3:1]};	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:53:23, :54:{17,32}]
  always @(posedge clock or posedge reset) begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
    if (reset) begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
      widx_widx_bin <= 4'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :70:7]
      ready_reg <= 1'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:90:56]
      widx_gray <= 4'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :93:55]
    end
    else begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
      widx_widx_bin <= widx_incremented;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :53:23]
      ready_reg <= _sink_valid_io_out & widx != (_ridx_ridx_gray_io_q ^ 4'hC);	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:54:17, :85:{26,34,44}, :90:56, :106:30, generators/rocket-chip/src/main/scala/util/ShiftReg.scala:45:23]
      widx_gray <= widx;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:54:17, :93:55]
    end
  end // always @(posedge, posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
      `FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:8];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
    initial begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
        `INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
        for (logic [3:0] i = 4'h0; i < 4'h9; i += 4'h1) begin
          _RANDOM[i] = `RANDOM;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
        end	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
        mem_0_phit = _RANDOM[4'h0];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
        mem_1_phit = _RANDOM[4'h1];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
        mem_2_phit = _RANDOM[4'h2];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
        mem_3_phit = _RANDOM[4'h3];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
        mem_4_phit = _RANDOM[4'h4];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
        mem_5_phit = _RANDOM[4'h5];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
        mem_6_phit = _RANDOM[4'h6];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
        mem_7_phit = _RANDOM[4'h7];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
        widx_widx_bin = _RANDOM[4'h8][3:0];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :70:7]
        ready_reg = _RANDOM[4'h8][4];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :70:7, :90:56]
        widx_gray = _RANDOM[4'h8][8:5];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :70:7, :93:55]
      `endif // RANDOMIZE_REG_INIT
      if (reset) begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
        widx_widx_bin = 4'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :70:7]
        ready_reg = 1'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:90:56]
        widx_gray = 4'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :93:55]
      end
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
      `FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  AsyncResetSynchronizerShiftReg_w4_d3_i0 ridx_ridx_gray (	// @[generators/rocket-chip/src/main/scala/util/ShiftReg.scala:45:23]
    .clock (clock),
    .reset (reset),
    .io_d  (io_async_ridx),
    .io_q  (_ridx_ridx_gray_io_q)
  );	// @[generators/rocket-chip/src/main/scala/util/ShiftReg.scala:45:23]
  AsyncValidSync source_valid_0 (	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:102:32]
    .io_in  (1'h1),
    .io_out (_source_valid_0_io_out),
    .clock  (clock),
    .reset  (reset | ~io_async_safe_sink_reset_n)	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:107:{43,46}]
  );	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:102:32]
  AsyncValidSync source_valid_1 (	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:103:32]
    .io_in  (_source_valid_0_io_out),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:102:32]
    .io_out (io_async_safe_widx_valid),
    .clock  (clock),
    .reset  (reset | ~io_async_safe_sink_reset_n)	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:107:46, :108:43]
  );	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:103:32]
  AsyncValidSync sink_extend (	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:105:30]
    .io_in  (io_async_safe_ridx_valid),
    .io_out (_sink_extend_io_out),
    .clock  (clock),
    .reset  (reset | ~io_async_safe_sink_reset_n)	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:107:46, :109:43]
  );	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:105:30]
  AsyncValidSync sink_valid (	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:106:30]
    .io_in  (_sink_extend_io_out),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:105:30]
    .io_out (_sink_valid_io_out),
    .clock  (clock),
    .reset  (reset)
  );	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:106:30]
  assign io_enq_ready = io_enq_ready_0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :91:29]
  assign io_async_mem_0_phit = mem_0_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
  assign io_async_mem_1_phit = mem_1_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
  assign io_async_mem_2_phit = mem_2_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
  assign io_async_mem_3_phit = mem_3_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
  assign io_async_mem_4_phit = mem_4_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
  assign io_async_mem_5_phit = mem_5_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
  assign io_async_mem_6_phit = mem_6_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
  assign io_async_mem_7_phit = mem_7_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
  assign io_async_widx = widx_gray;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :93:55]
  assign io_async_safe_source_reset_n = ~reset;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :123:27]
endmodule
