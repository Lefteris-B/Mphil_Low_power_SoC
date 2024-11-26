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
module AsyncQueueSource_DebugInternalBundle(	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
  input        clock,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
  input        reset,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
  output       io_enq_ready,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  input        io_enq_valid,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  input        io_enq_bits_resumereq,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  input  [9:0] io_enq_bits_hartsel,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  input        io_enq_bits_ackhavereset,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  input        io_enq_bits_hrmask_0,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output       io_async_mem_0_resumereq,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output [9:0] io_async_mem_0_hartsel,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output       io_async_mem_0_ackhavereset,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output       io_async_mem_0_hrmask_0,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  input        io_async_ridx,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output       io_async_widx,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  input        io_async_safe_ridx_valid,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output       io_async_safe_widx_valid,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  output       io_async_safe_source_reset_n,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
  input        io_async_safe_sink_reset_n	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:73:14]
);

  wire       io_enq_ready_0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:91:29]
  wire       _sink_valid_io_out;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:106:30]
  wire       _sink_extend_io_out;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:105:30]
  wire       _source_valid_0_io_out;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:102:32]
  wire       _ridx_ridx_gray_io_q;	// @[generators/rocket-chip/src/main/scala/util/ShiftReg.scala:45:23]
  reg        mem_0_resumereq;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
  reg  [9:0] mem_0_hartsel;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
  reg        mem_0_ackhavereset;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
  reg        mem_0_hrmask_0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
  wire       _widx_T_1 = io_enq_ready_0 & io_enq_valid;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:91:29, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  reg        widx_widx_bin;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25]
  reg        ready_reg;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:90:56]
  assign io_enq_ready_0 = ready_reg & _sink_valid_io_out;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:90:56, :91:29, :106:30]
  reg        widx_gray;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:93:55]
  always @(posedge clock) begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
    if (_widx_T_1) begin	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35]
      mem_0_resumereq <= io_enq_bits_resumereq;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
      mem_0_hartsel <= io_enq_bits_hartsel;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
      mem_0_ackhavereset <= io_enq_bits_ackhavereset;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
      mem_0_hrmask_0 <= io_enq_bits_hrmask_0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:82:16]
    end
  end // always @(posedge)
  wire       widx = _sink_valid_io_out & widx_widx_bin + _widx_T_1;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :53:{23,43}, :106:30, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  always @(posedge clock or posedge reset) begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
    if (reset) begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
      widx_widx_bin <= 1'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :70:7]
      ready_reg <= 1'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :90:56]
      widx_gray <= 1'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :93:55]
    end
    else begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
      widx_widx_bin <= widx;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :53:23]
      ready_reg <= _sink_valid_io_out & widx != ~_ridx_ridx_gray_io_q;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:53:23, :85:{26,34,44}, :90:56, :106:30, generators/rocket-chip/src/main/scala/util/ShiftReg.scala:45:23]
      widx_gray <= widx;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:53:23, :93:55]
    end
  end // always @(posedge, posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
      `FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:0];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
    initial begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
        `INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
        _RANDOM[/*Zero width*/ 1'b0] = `RANDOM;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
        mem_0_resumereq = _RANDOM[/*Zero width*/ 1'b0][0];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
        mem_0_hartsel = _RANDOM[/*Zero width*/ 1'b0][10:1];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
        mem_0_ackhavereset = _RANDOM[/*Zero width*/ 1'b0][11];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
        mem_0_hrmask_0 = _RANDOM[/*Zero width*/ 1'b0][14];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
        widx_widx_bin = _RANDOM[/*Zero width*/ 1'b0][15];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :70:7, :82:16]
        ready_reg = _RANDOM[/*Zero width*/ 1'b0][16];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16, :90:56]
        widx_gray = _RANDOM[/*Zero width*/ 1'b0][17];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16, :93:55]
      `endif // RANDOMIZE_REG_INIT
      if (reset) begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
        widx_widx_bin = 1'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :70:7]
        ready_reg = 1'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :90:56]
        widx_gray = 1'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :93:55]
      end
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
      `FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  AsyncResetSynchronizerShiftReg_w1_d3_i0 ridx_ridx_gray (	// @[generators/rocket-chip/src/main/scala/util/ShiftReg.scala:45:23]
    .clock (clock),
    .reset (reset),
    .io_d  (io_async_ridx),
    .io_q  (_ridx_ridx_gray_io_q)
  );	// @[generators/rocket-chip/src/main/scala/util/ShiftReg.scala:45:23]
  AsyncValidSync source_valid_0 (	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:102:32]
    .io_in  (1'h1),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7]
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
  assign io_async_mem_0_resumereq = mem_0_resumereq;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
  assign io_async_mem_0_hartsel = mem_0_hartsel;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
  assign io_async_mem_0_ackhavereset = mem_0_ackhavereset;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
  assign io_async_mem_0_hrmask_0 = mem_0_hrmask_0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :82:16]
  assign io_async_widx = widx_gray;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :93:55]
  assign io_async_safe_source_reset_n = ~reset;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:70:7, :123:27]
endmodule

