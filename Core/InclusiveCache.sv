// Generated by CIRCT firtool-1.75.0
module InclusiveCache(	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:108:9]
  input         clock,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:108:9]
  input         reset,	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:108:9]
  output        auto_ctrls_ctrl_in_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_ctrls_ctrl_in_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_ctrls_ctrl_in_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_ctrls_ctrl_in_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_ctrls_ctrl_in_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [10:0] auto_ctrls_ctrl_in_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [25:0] auto_ctrls_ctrl_in_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_ctrls_ctrl_in_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0] auto_ctrls_ctrl_in_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_ctrls_ctrl_in_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_ctrls_ctrl_in_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_ctrls_ctrl_in_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_ctrls_ctrl_in_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_ctrls_ctrl_in_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [10:0] auto_ctrls_ctrl_in_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0] auto_ctrls_ctrl_in_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_in_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_in_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_in_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [5:0]  auto_in_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [31:0] auto_in_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_in_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0] auto_in_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_b_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_b_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_in_b_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [31:0] auto_in_b_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_c_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_c_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_in_c_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_in_c_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_in_c_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [5:0]  auto_in_c_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [31:0] auto_in_c_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0] auto_in_c_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_c_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_in_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_in_d_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_in_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [5:0]  auto_in_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_in_d_bits_sink,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_d_bits_denied,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0] auto_in_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_d_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_e_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_in_e_bits_sink,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_out_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_out_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_out_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_out_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_out_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_out_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [31:0] auto_out_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [7:0]  auto_out_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0] auto_out_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_out_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_out_c_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_out_c_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_out_c_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_out_c_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_out_c_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_out_c_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [31:0] auto_out_c_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0] auto_out_c_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_out_c_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_out_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_out_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_out_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_out_d_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_out_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_out_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_out_d_bits_sink,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_out_d_bits_denied,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0] auto_out_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_out_d_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_out_e_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_out_e_bits_sink	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
);

  wire        _inclusive_cache_bank_sched_io_in_a_ready;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  wire        _inclusive_cache_bank_sched_io_in_b_valid;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  wire [1:0]  _inclusive_cache_bank_sched_io_in_b_bits_param;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  wire [31:0] _inclusive_cache_bank_sched_io_in_b_bits_address;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  wire        _inclusive_cache_bank_sched_io_in_c_ready;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  wire        _inclusive_cache_bank_sched_io_in_d_valid;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  wire [2:0]  _inclusive_cache_bank_sched_io_in_d_bits_opcode;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  wire [1:0]  _inclusive_cache_bank_sched_io_in_d_bits_param;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  wire [2:0]  _inclusive_cache_bank_sched_io_in_d_bits_size;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  wire [5:0]  _inclusive_cache_bank_sched_io_in_d_bits_source;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  wire [2:0]  _inclusive_cache_bank_sched_io_in_d_bits_sink;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  wire        _inclusive_cache_bank_sched_io_in_d_bits_denied;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  wire        _inclusive_cache_bank_sched_io_in_d_bits_corrupt;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  wire        _inclusive_cache_bank_sched_io_req_ready;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  wire        _inclusive_cache_bank_sched_io_resp_valid;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  wire        _ctrls_io_flush_req_valid;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:103:43]
  wire [63:0] _ctrls_io_flush_req_bits;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:103:43]
  wire        contained = {_ctrls_io_flush_req_bits[63:32], _ctrls_io_flush_req_bits[31:28] ^ 4'h8} == 36'h0 | {_ctrls_io_flush_req_bits[63:28], _ctrls_io_flush_req_bits[27:16] ^ 12'h800} == 48'h0;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:103:43, :169:67, generators/rocket-chip/src/main/scala/diplomacy/Parameters.scala:137:{31,41,46,59}]
  InclusiveCacheControl ctrls (	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:103:43]
    .clock                       (clock),
    .reset                       (reset),
    .auto_ctrl_in_a_ready        (auto_ctrls_ctrl_in_a_ready),
    .auto_ctrl_in_a_valid        (auto_ctrls_ctrl_in_a_valid),
    .auto_ctrl_in_a_bits_opcode  (auto_ctrls_ctrl_in_a_bits_opcode),
    .auto_ctrl_in_a_bits_param   (auto_ctrls_ctrl_in_a_bits_param),
    .auto_ctrl_in_a_bits_size    (auto_ctrls_ctrl_in_a_bits_size),
    .auto_ctrl_in_a_bits_source  (auto_ctrls_ctrl_in_a_bits_source),
    .auto_ctrl_in_a_bits_address (auto_ctrls_ctrl_in_a_bits_address),
    .auto_ctrl_in_a_bits_mask    (auto_ctrls_ctrl_in_a_bits_mask),
    .auto_ctrl_in_a_bits_data    (auto_ctrls_ctrl_in_a_bits_data),
    .auto_ctrl_in_a_bits_corrupt (auto_ctrls_ctrl_in_a_bits_corrupt),
    .auto_ctrl_in_d_ready        (auto_ctrls_ctrl_in_d_ready),
    .auto_ctrl_in_d_valid        (auto_ctrls_ctrl_in_d_valid),
    .auto_ctrl_in_d_bits_opcode  (auto_ctrls_ctrl_in_d_bits_opcode),
    .auto_ctrl_in_d_bits_size    (auto_ctrls_ctrl_in_d_bits_size),
    .auto_ctrl_in_d_bits_source  (auto_ctrls_ctrl_in_d_bits_source),
    .auto_ctrl_in_d_bits_data    (auto_ctrls_ctrl_in_d_bits_data),
    .io_flush_match              (contained),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:169:67]
    .io_flush_req_ready          (contained & _inclusive_cache_bank_sched_io_req_ready),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29, :169:67, :174:25]
    .io_flush_req_valid          (_ctrls_io_flush_req_valid),
    .io_flush_req_bits           (_ctrls_io_flush_req_bits),
    .io_flush_resp               (_inclusive_cache_bank_sched_io_resp_valid)	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  );	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:103:43]
  TLMonitor_34 monitor (	// @[generators/rocket-chip/src/main/scala/tilelink/Nodes.scala:27:25]
    .clock                (clock),
    .reset                (reset),
    .io_in_a_ready        (_inclusive_cache_bank_sched_io_in_a_ready),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
    .io_in_a_valid        (auto_in_a_valid),
    .io_in_a_bits_opcode  (auto_in_a_bits_opcode),
    .io_in_a_bits_param   (auto_in_a_bits_param),
    .io_in_a_bits_size    (auto_in_a_bits_size),
    .io_in_a_bits_source  (auto_in_a_bits_source),
    .io_in_a_bits_address (auto_in_a_bits_address),
    .io_in_a_bits_mask    (auto_in_a_bits_mask),
    .io_in_a_bits_corrupt (auto_in_a_bits_corrupt),
    .io_in_b_ready        (auto_in_b_ready),
    .io_in_b_valid        (_inclusive_cache_bank_sched_io_in_b_valid),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
    .io_in_b_bits_param   (_inclusive_cache_bank_sched_io_in_b_bits_param),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
    .io_in_b_bits_address (_inclusive_cache_bank_sched_io_in_b_bits_address),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
    .io_in_c_ready        (_inclusive_cache_bank_sched_io_in_c_ready),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
    .io_in_c_valid        (auto_in_c_valid),
    .io_in_c_bits_opcode  (auto_in_c_bits_opcode),
    .io_in_c_bits_param   (auto_in_c_bits_param),
    .io_in_c_bits_size    (auto_in_c_bits_size),
    .io_in_c_bits_source  (auto_in_c_bits_source),
    .io_in_c_bits_address (auto_in_c_bits_address),
    .io_in_c_bits_corrupt (auto_in_c_bits_corrupt),
    .io_in_d_ready        (auto_in_d_ready),
    .io_in_d_valid        (_inclusive_cache_bank_sched_io_in_d_valid),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
    .io_in_d_bits_opcode  (_inclusive_cache_bank_sched_io_in_d_bits_opcode),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
    .io_in_d_bits_param   (_inclusive_cache_bank_sched_io_in_d_bits_param),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
    .io_in_d_bits_size    (_inclusive_cache_bank_sched_io_in_d_bits_size),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
    .io_in_d_bits_source  (_inclusive_cache_bank_sched_io_in_d_bits_source),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
    .io_in_d_bits_sink    (_inclusive_cache_bank_sched_io_in_d_bits_sink),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
    .io_in_d_bits_denied  (_inclusive_cache_bank_sched_io_in_d_bits_denied),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
    .io_in_d_bits_corrupt (_inclusive_cache_bank_sched_io_in_d_bits_corrupt),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
    .io_in_e_valid        (auto_in_e_valid),
    .io_in_e_bits_sink    (auto_in_e_bits_sink)
  );	// @[generators/rocket-chip/src/main/scala/tilelink/Nodes.scala:27:25]
  InclusiveCacheBankScheduler inclusive_cache_bank_sched (	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
    .clock                 (clock),
    .reset                 (reset),
    .io_in_a_ready         (_inclusive_cache_bank_sched_io_in_a_ready),
    .io_in_a_valid         (auto_in_a_valid),
    .io_in_a_bits_opcode   (auto_in_a_bits_opcode),
    .io_in_a_bits_param    (auto_in_a_bits_param),
    .io_in_a_bits_size     (auto_in_a_bits_size),
    .io_in_a_bits_source   (auto_in_a_bits_source),
    .io_in_a_bits_address  (auto_in_a_bits_address),
    .io_in_a_bits_mask     (auto_in_a_bits_mask),
    .io_in_a_bits_data     (auto_in_a_bits_data),
    .io_in_a_bits_corrupt  (auto_in_a_bits_corrupt),
    .io_in_b_ready         (auto_in_b_ready),
    .io_in_b_valid         (_inclusive_cache_bank_sched_io_in_b_valid),
    .io_in_b_bits_param    (_inclusive_cache_bank_sched_io_in_b_bits_param),
    .io_in_b_bits_address  (_inclusive_cache_bank_sched_io_in_b_bits_address),
    .io_in_c_ready         (_inclusive_cache_bank_sched_io_in_c_ready),
    .io_in_c_valid         (auto_in_c_valid),
    .io_in_c_bits_opcode   (auto_in_c_bits_opcode),
    .io_in_c_bits_param    (auto_in_c_bits_param),
    .io_in_c_bits_size     (auto_in_c_bits_size),
    .io_in_c_bits_source   (auto_in_c_bits_source),
    .io_in_c_bits_address  (auto_in_c_bits_address),
    .io_in_c_bits_data     (auto_in_c_bits_data),
    .io_in_c_bits_corrupt  (auto_in_c_bits_corrupt),
    .io_in_d_ready         (auto_in_d_ready),
    .io_in_d_valid         (_inclusive_cache_bank_sched_io_in_d_valid),
    .io_in_d_bits_opcode   (_inclusive_cache_bank_sched_io_in_d_bits_opcode),
    .io_in_d_bits_param    (_inclusive_cache_bank_sched_io_in_d_bits_param),
    .io_in_d_bits_size     (_inclusive_cache_bank_sched_io_in_d_bits_size),
    .io_in_d_bits_source   (_inclusive_cache_bank_sched_io_in_d_bits_source),
    .io_in_d_bits_sink     (_inclusive_cache_bank_sched_io_in_d_bits_sink),
    .io_in_d_bits_denied   (_inclusive_cache_bank_sched_io_in_d_bits_denied),
    .io_in_d_bits_data     (auto_in_d_bits_data),
    .io_in_d_bits_corrupt  (_inclusive_cache_bank_sched_io_in_d_bits_corrupt),
    .io_in_e_valid         (auto_in_e_valid),
    .io_in_e_bits_sink     (auto_in_e_bits_sink),
    .io_out_a_ready        (auto_out_a_ready),
    .io_out_a_valid        (auto_out_a_valid),
    .io_out_a_bits_opcode  (auto_out_a_bits_opcode),
    .io_out_a_bits_param   (auto_out_a_bits_param),
    .io_out_a_bits_size    (auto_out_a_bits_size),
    .io_out_a_bits_source  (auto_out_a_bits_source),
    .io_out_a_bits_address (auto_out_a_bits_address),
    .io_out_a_bits_mask    (auto_out_a_bits_mask),
    .io_out_a_bits_data    (auto_out_a_bits_data),
    .io_out_a_bits_corrupt (auto_out_a_bits_corrupt),
    .io_out_c_ready        (auto_out_c_ready),
    .io_out_c_valid        (auto_out_c_valid),
    .io_out_c_bits_opcode  (auto_out_c_bits_opcode),
    .io_out_c_bits_param   (auto_out_c_bits_param),
    .io_out_c_bits_size    (auto_out_c_bits_size),
    .io_out_c_bits_source  (auto_out_c_bits_source),
    .io_out_c_bits_address (auto_out_c_bits_address),
    .io_out_c_bits_data    (auto_out_c_bits_data),
    .io_out_c_bits_corrupt (auto_out_c_bits_corrupt),
    .io_out_d_ready        (auto_out_d_ready),
    .io_out_d_valid        (auto_out_d_valid),
    .io_out_d_bits_opcode  (auto_out_d_bits_opcode),
    .io_out_d_bits_param   (auto_out_d_bits_param),
    .io_out_d_bits_size    (auto_out_d_bits_size),
    .io_out_d_bits_source  (auto_out_d_bits_source),
    .io_out_d_bits_sink    (auto_out_d_bits_sink),
    .io_out_d_bits_denied  (auto_out_d_bits_denied),
    .io_out_d_bits_data    (auto_out_d_bits_data),
    .io_out_d_bits_corrupt (auto_out_d_bits_corrupt),
    .io_out_e_valid        (auto_out_e_valid),
    .io_out_e_bits_sink    (auto_out_e_bits_sink),
    .io_req_ready          (_inclusive_cache_bank_sched_io_req_ready),
    .io_req_valid          (contained & _ctrls_io_flush_req_valid),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:103:43, :169:67, :172:41]
    .io_req_bits_address   (_ctrls_io_flush_req_bits[31:0]),	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:103:43, generators/rocket-chip/src/main/scala/diplomacy/Parameters.scala:137:31]
    .io_resp_valid         (_inclusive_cache_bank_sched_io_resp_valid)
  );	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:137:29]
  assign auto_in_a_ready = _inclusive_cache_bank_sched_io_in_a_ready;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:108:9, :137:29]
  assign auto_in_b_valid = _inclusive_cache_bank_sched_io_in_b_valid;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:108:9, :137:29]
  assign auto_in_b_bits_param = _inclusive_cache_bank_sched_io_in_b_bits_param;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:108:9, :137:29]
  assign auto_in_b_bits_address = _inclusive_cache_bank_sched_io_in_b_bits_address;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:108:9, :137:29]
  assign auto_in_c_ready = _inclusive_cache_bank_sched_io_in_c_ready;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:108:9, :137:29]
  assign auto_in_d_valid = _inclusive_cache_bank_sched_io_in_d_valid;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:108:9, :137:29]
  assign auto_in_d_bits_opcode = _inclusive_cache_bank_sched_io_in_d_bits_opcode;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:108:9, :137:29]
  assign auto_in_d_bits_param = _inclusive_cache_bank_sched_io_in_d_bits_param;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:108:9, :137:29]
  assign auto_in_d_bits_size = _inclusive_cache_bank_sched_io_in_d_bits_size;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:108:9, :137:29]
  assign auto_in_d_bits_source = _inclusive_cache_bank_sched_io_in_d_bits_source;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:108:9, :137:29]
  assign auto_in_d_bits_sink = _inclusive_cache_bank_sched_io_in_d_bits_sink;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:108:9, :137:29]
  assign auto_in_d_bits_denied = _inclusive_cache_bank_sched_io_in_d_bits_denied;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:108:9, :137:29]
  assign auto_in_d_bits_corrupt = _inclusive_cache_bank_sched_io_in_d_bits_corrupt;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/InclusiveCache.scala:108:9, :137:29]
endmodule
