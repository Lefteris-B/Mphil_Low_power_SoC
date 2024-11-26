// Generated by CIRCT firtool-1.75.0
module AsyncQueue_TestHarness_UNIQUIFIED(	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:226:7]
  input         io_enq_clock,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:227:14]
  input         io_enq_reset,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:227:14]
  output        io_enq_ready,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:227:14]
  input         io_enq_valid,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:227:14]
  input  [31:0] io_enq_bits_phit,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:227:14]
  input         io_deq_clock,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:227:14]
  input         io_deq_reset,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:227:14]
  input         io_deq_ready,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:227:14]
  output        io_deq_valid,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:227:14]
  output [31:0] io_deq_bits_phit	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:227:14]
);

  wire [3:0]  _sink_io_async_ridx;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:229:70]
  wire        _sink_io_async_safe_ridx_valid;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:229:70]
  wire        _sink_io_async_safe_sink_reset_n;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:229:70]
  wire [31:0] _source_io_async_mem_0_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
  wire [31:0] _source_io_async_mem_1_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
  wire [31:0] _source_io_async_mem_2_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
  wire [31:0] _source_io_async_mem_3_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
  wire [31:0] _source_io_async_mem_4_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
  wire [31:0] _source_io_async_mem_5_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
  wire [31:0] _source_io_async_mem_6_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
  wire [31:0] _source_io_async_mem_7_phit;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
  wire [3:0]  _source_io_async_widx;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
  wire        _source_io_async_safe_widx_valid;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
  wire        _source_io_async_safe_source_reset_n;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
  AsyncQueueSource_Phit source (	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
    .clock                        (io_enq_clock),
    .reset                        (io_enq_reset),
    .io_enq_ready                 (io_enq_ready),
    .io_enq_valid                 (io_enq_valid),
    .io_enq_bits_phit             (io_enq_bits_phit),
    .io_async_mem_0_phit          (_source_io_async_mem_0_phit),
    .io_async_mem_1_phit          (_source_io_async_mem_1_phit),
    .io_async_mem_2_phit          (_source_io_async_mem_2_phit),
    .io_async_mem_3_phit          (_source_io_async_mem_3_phit),
    .io_async_mem_4_phit          (_source_io_async_mem_4_phit),
    .io_async_mem_5_phit          (_source_io_async_mem_5_phit),
    .io_async_mem_6_phit          (_source_io_async_mem_6_phit),
    .io_async_mem_7_phit          (_source_io_async_mem_7_phit),
    .io_async_ridx                (_sink_io_async_ridx),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:229:70]
    .io_async_widx                (_source_io_async_widx),
    .io_async_safe_ridx_valid     (_sink_io_async_safe_ridx_valid),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:229:70]
    .io_async_safe_widx_valid     (_source_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n (_source_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n   (_sink_io_async_safe_sink_reset_n)	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:229:70]
  );	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
  AsyncQueueSink_Phit sink (	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:229:70]
    .clock                        (io_deq_clock),
    .reset                        (io_deq_reset),
    .io_deq_ready                 (io_deq_ready),
    .io_deq_valid                 (io_deq_valid),
    .io_deq_bits_phit             (io_deq_bits_phit),
    .io_async_mem_0_phit          (_source_io_async_mem_0_phit),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
    .io_async_mem_1_phit          (_source_io_async_mem_1_phit),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
    .io_async_mem_2_phit          (_source_io_async_mem_2_phit),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
    .io_async_mem_3_phit          (_source_io_async_mem_3_phit),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
    .io_async_mem_4_phit          (_source_io_async_mem_4_phit),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
    .io_async_mem_5_phit          (_source_io_async_mem_5_phit),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
    .io_async_mem_6_phit          (_source_io_async_mem_6_phit),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
    .io_async_mem_7_phit          (_source_io_async_mem_7_phit),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
    .io_async_ridx                (_sink_io_async_ridx),
    .io_async_widx                (_source_io_async_widx),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
    .io_async_safe_ridx_valid     (_sink_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid     (_source_io_async_safe_widx_valid),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
    .io_async_safe_source_reset_n (_source_io_async_safe_source_reset_n),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:228:70]
    .io_async_safe_sink_reset_n   (_sink_io_async_safe_sink_reset_n)
  );	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:229:70]
endmodule

