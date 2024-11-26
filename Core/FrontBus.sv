// Generated by CIRCT firtool-1.75.0
module FrontBus(	// @[generators/rocket-chip/src/main/scala/prci/ClockDomain.scala:14:9]
  output        auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [31:0] auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0] auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_bits_sink,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_bits_denied,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0] auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_coupler_from_debug_sb_widget_anon_in_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_coupler_from_debug_sb_widget_anon_in_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_coupler_from_debug_sb_widget_anon_in_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_coupler_from_debug_sb_widget_anon_in_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [31:0] auto_coupler_from_debug_sb_widget_anon_in_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_coupler_from_debug_sb_widget_anon_in_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_coupler_from_debug_sb_widget_anon_in_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_coupler_from_debug_sb_widget_anon_in_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_coupler_from_debug_sb_widget_anon_in_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_coupler_from_debug_sb_widget_anon_in_d_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_coupler_from_debug_sb_widget_anon_in_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_coupler_from_debug_sb_widget_anon_in_d_bits_sink,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_coupler_from_debug_sb_widget_anon_in_d_bits_denied,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [7:0]  auto_coupler_from_debug_sb_widget_anon_in_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_coupler_from_debug_sb_widget_anon_in_d_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_fixedClockNode_anon_out_clock,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_fixedClockNode_anon_out_reset,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_fbus_clock_groups_in_member_fbus_0_clock,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_fbus_clock_groups_in_member_fbus_0_reset,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_bus_xing_out_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_bus_xing_out_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_bus_xing_out_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_bus_xing_out_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_bus_xing_out_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [4:0]  auto_bus_xing_out_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [31:0] auto_bus_xing_out_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [7:0]  auto_bus_xing_out_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0] auto_bus_xing_out_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_bus_xing_out_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_bus_xing_out_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_bus_xing_out_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_bus_xing_out_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_bus_xing_out_d_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_bus_xing_out_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [4:0]  auto_bus_xing_out_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_bus_xing_out_d_bits_sink,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_bus_xing_out_d_bits_denied,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0] auto_bus_xing_out_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_bus_xing_out_d_bits_corrupt	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
);

  wire        _coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_valid;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire [2:0]  _coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_opcode;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire [2:0]  _coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_param;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire [3:0]  _coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_size;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire [3:0]  _coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_source;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire [31:0] _coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_address;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire [7:0]  _coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_mask;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire [63:0] _coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_data;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire        _coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_corrupt;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire        _coupler_from_port_named_serial_tl_0_in_auto_tl_out_d_ready;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire        _coupler_from_debug_sb_auto_tl_out_a_valid;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire [2:0]  _coupler_from_debug_sb_auto_tl_out_a_bits_opcode;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire [3:0]  _coupler_from_debug_sb_auto_tl_out_a_bits_size;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire [31:0] _coupler_from_debug_sb_auto_tl_out_a_bits_address;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire [7:0]  _coupler_from_debug_sb_auto_tl_out_a_bits_mask;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire [63:0] _coupler_from_debug_sb_auto_tl_out_a_bits_data;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire        _coupler_from_debug_sb_auto_tl_out_d_ready;	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  wire        _buffer_auto_in_a_ready;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire        _buffer_auto_in_d_valid;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire [2:0]  _buffer_auto_in_d_bits_opcode;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire [1:0]  _buffer_auto_in_d_bits_param;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire [3:0]  _buffer_auto_in_d_bits_size;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire [4:0]  _buffer_auto_in_d_bits_source;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire [2:0]  _buffer_auto_in_d_bits_sink;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire        _buffer_auto_in_d_bits_denied;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire [63:0] _buffer_auto_in_d_bits_data;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire        _buffer_auto_in_d_bits_corrupt;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire        _fbus_xbar_auto_anon_in_1_a_ready;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire        _fbus_xbar_auto_anon_in_1_d_valid;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [2:0]  _fbus_xbar_auto_anon_in_1_d_bits_opcode;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [1:0]  _fbus_xbar_auto_anon_in_1_d_bits_param;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [3:0]  _fbus_xbar_auto_anon_in_1_d_bits_size;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [3:0]  _fbus_xbar_auto_anon_in_1_d_bits_source;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [2:0]  _fbus_xbar_auto_anon_in_1_d_bits_sink;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire        _fbus_xbar_auto_anon_in_1_d_bits_denied;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [63:0] _fbus_xbar_auto_anon_in_1_d_bits_data;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire        _fbus_xbar_auto_anon_in_1_d_bits_corrupt;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire        _fbus_xbar_auto_anon_in_0_a_ready;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire        _fbus_xbar_auto_anon_in_0_d_valid;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [2:0]  _fbus_xbar_auto_anon_in_0_d_bits_opcode;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [1:0]  _fbus_xbar_auto_anon_in_0_d_bits_param;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [3:0]  _fbus_xbar_auto_anon_in_0_d_bits_size;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [2:0]  _fbus_xbar_auto_anon_in_0_d_bits_sink;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire        _fbus_xbar_auto_anon_in_0_d_bits_denied;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [63:0] _fbus_xbar_auto_anon_in_0_d_bits_data;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire        _fbus_xbar_auto_anon_in_0_d_bits_corrupt;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire        _fbus_xbar_auto_anon_out_a_valid;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [2:0]  _fbus_xbar_auto_anon_out_a_bits_opcode;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [2:0]  _fbus_xbar_auto_anon_out_a_bits_param;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [3:0]  _fbus_xbar_auto_anon_out_a_bits_size;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [4:0]  _fbus_xbar_auto_anon_out_a_bits_source;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [31:0] _fbus_xbar_auto_anon_out_a_bits_address;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [7:0]  _fbus_xbar_auto_anon_out_a_bits_mask;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire [63:0] _fbus_xbar_auto_anon_out_a_bits_data;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire        _fbus_xbar_auto_anon_out_a_bits_corrupt;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire        _fbus_xbar_auto_anon_out_d_ready;	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  wire        _fixedClockNode_auto_anon_out_0_clock;	// @[generators/rocket-chip/src/main/scala/prci/ClockGroup.scala:115:114]
  wire        _fixedClockNode_auto_anon_out_0_reset;	// @[generators/rocket-chip/src/main/scala/prci/ClockGroup.scala:115:114]
  FixedClockBroadcast_2 fixedClockNode (	// @[generators/rocket-chip/src/main/scala/prci/ClockGroup.scala:115:114]
    .auto_anon_in_clock    (auto_fbus_clock_groups_in_member_fbus_0_clock),
    .auto_anon_in_reset    (auto_fbus_clock_groups_in_member_fbus_0_reset),
    .auto_anon_out_1_clock (auto_fixedClockNode_anon_out_clock),
    .auto_anon_out_1_reset (auto_fixedClockNode_anon_out_reset),
    .auto_anon_out_0_clock (_fixedClockNode_auto_anon_out_0_clock),
    .auto_anon_out_0_reset (_fixedClockNode_auto_anon_out_0_reset)
  );	// @[generators/rocket-chip/src/main/scala/prci/ClockGroup.scala:115:114]
  TLXbar_fbus_i2_o1_a32d64s5k3z4u fbus_xbar (	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .clock                         (_fixedClockNode_auto_anon_out_0_clock),	// @[generators/rocket-chip/src/main/scala/prci/ClockGroup.scala:115:114]
    .reset                         (_fixedClockNode_auto_anon_out_0_reset),	// @[generators/rocket-chip/src/main/scala/prci/ClockGroup.scala:115:114]
    .auto_anon_in_1_a_ready        (_fbus_xbar_auto_anon_in_1_a_ready),
    .auto_anon_in_1_a_valid        (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_valid),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_1_a_bits_opcode  (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_opcode),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_1_a_bits_param   (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_param),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_1_a_bits_size    (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_size),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_1_a_bits_source  (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_source),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_1_a_bits_address (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_address),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_1_a_bits_mask    (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_mask),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_1_a_bits_data    (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_data),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_1_a_bits_corrupt (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_corrupt),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_1_d_ready        (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_d_ready),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_1_d_valid        (_fbus_xbar_auto_anon_in_1_d_valid),
    .auto_anon_in_1_d_bits_opcode  (_fbus_xbar_auto_anon_in_1_d_bits_opcode),
    .auto_anon_in_1_d_bits_param   (_fbus_xbar_auto_anon_in_1_d_bits_param),
    .auto_anon_in_1_d_bits_size    (_fbus_xbar_auto_anon_in_1_d_bits_size),
    .auto_anon_in_1_d_bits_source  (_fbus_xbar_auto_anon_in_1_d_bits_source),
    .auto_anon_in_1_d_bits_sink    (_fbus_xbar_auto_anon_in_1_d_bits_sink),
    .auto_anon_in_1_d_bits_denied  (_fbus_xbar_auto_anon_in_1_d_bits_denied),
    .auto_anon_in_1_d_bits_data    (_fbus_xbar_auto_anon_in_1_d_bits_data),
    .auto_anon_in_1_d_bits_corrupt (_fbus_xbar_auto_anon_in_1_d_bits_corrupt),
    .auto_anon_in_0_a_ready        (_fbus_xbar_auto_anon_in_0_a_ready),
    .auto_anon_in_0_a_valid        (_coupler_from_debug_sb_auto_tl_out_a_valid),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_0_a_bits_opcode  (_coupler_from_debug_sb_auto_tl_out_a_bits_opcode),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_0_a_bits_size    (_coupler_from_debug_sb_auto_tl_out_a_bits_size),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_0_a_bits_address (_coupler_from_debug_sb_auto_tl_out_a_bits_address),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_0_a_bits_mask    (_coupler_from_debug_sb_auto_tl_out_a_bits_mask),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_0_a_bits_data    (_coupler_from_debug_sb_auto_tl_out_a_bits_data),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_0_d_ready        (_coupler_from_debug_sb_auto_tl_out_d_ready),	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .auto_anon_in_0_d_valid        (_fbus_xbar_auto_anon_in_0_d_valid),
    .auto_anon_in_0_d_bits_opcode  (_fbus_xbar_auto_anon_in_0_d_bits_opcode),
    .auto_anon_in_0_d_bits_param   (_fbus_xbar_auto_anon_in_0_d_bits_param),
    .auto_anon_in_0_d_bits_size    (_fbus_xbar_auto_anon_in_0_d_bits_size),
    .auto_anon_in_0_d_bits_sink    (_fbus_xbar_auto_anon_in_0_d_bits_sink),
    .auto_anon_in_0_d_bits_denied  (_fbus_xbar_auto_anon_in_0_d_bits_denied),
    .auto_anon_in_0_d_bits_data    (_fbus_xbar_auto_anon_in_0_d_bits_data),
    .auto_anon_in_0_d_bits_corrupt (_fbus_xbar_auto_anon_in_0_d_bits_corrupt),
    .auto_anon_out_a_ready         (_buffer_auto_in_a_ready),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_anon_out_a_valid         (_fbus_xbar_auto_anon_out_a_valid),
    .auto_anon_out_a_bits_opcode   (_fbus_xbar_auto_anon_out_a_bits_opcode),
    .auto_anon_out_a_bits_param    (_fbus_xbar_auto_anon_out_a_bits_param),
    .auto_anon_out_a_bits_size     (_fbus_xbar_auto_anon_out_a_bits_size),
    .auto_anon_out_a_bits_source   (_fbus_xbar_auto_anon_out_a_bits_source),
    .auto_anon_out_a_bits_address  (_fbus_xbar_auto_anon_out_a_bits_address),
    .auto_anon_out_a_bits_mask     (_fbus_xbar_auto_anon_out_a_bits_mask),
    .auto_anon_out_a_bits_data     (_fbus_xbar_auto_anon_out_a_bits_data),
    .auto_anon_out_a_bits_corrupt  (_fbus_xbar_auto_anon_out_a_bits_corrupt),
    .auto_anon_out_d_ready         (_fbus_xbar_auto_anon_out_d_ready),
    .auto_anon_out_d_valid         (_buffer_auto_in_d_valid),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_anon_out_d_bits_opcode   (_buffer_auto_in_d_bits_opcode),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_anon_out_d_bits_param    (_buffer_auto_in_d_bits_param),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_anon_out_d_bits_size     (_buffer_auto_in_d_bits_size),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_anon_out_d_bits_source   (_buffer_auto_in_d_bits_source),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_anon_out_d_bits_sink     (_buffer_auto_in_d_bits_sink),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_anon_out_d_bits_denied   (_buffer_auto_in_d_bits_denied),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_anon_out_d_bits_data     (_buffer_auto_in_d_bits_data),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_anon_out_d_bits_corrupt  (_buffer_auto_in_d_bits_corrupt)	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  );	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  TLBuffer_a32d64s5k3z4u buffer (	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .clock                   (_fixedClockNode_auto_anon_out_0_clock),	// @[generators/rocket-chip/src/main/scala/prci/ClockGroup.scala:115:114]
    .reset                   (_fixedClockNode_auto_anon_out_0_reset),	// @[generators/rocket-chip/src/main/scala/prci/ClockGroup.scala:115:114]
    .auto_in_a_ready         (_buffer_auto_in_a_ready),
    .auto_in_a_valid         (_fbus_xbar_auto_anon_out_a_valid),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_in_a_bits_opcode   (_fbus_xbar_auto_anon_out_a_bits_opcode),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_in_a_bits_param    (_fbus_xbar_auto_anon_out_a_bits_param),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_in_a_bits_size     (_fbus_xbar_auto_anon_out_a_bits_size),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_in_a_bits_source   (_fbus_xbar_auto_anon_out_a_bits_source),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_in_a_bits_address  (_fbus_xbar_auto_anon_out_a_bits_address),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_in_a_bits_mask     (_fbus_xbar_auto_anon_out_a_bits_mask),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_in_a_bits_data     (_fbus_xbar_auto_anon_out_a_bits_data),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_in_a_bits_corrupt  (_fbus_xbar_auto_anon_out_a_bits_corrupt),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_in_d_ready         (_fbus_xbar_auto_anon_out_d_ready),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_in_d_valid         (_buffer_auto_in_d_valid),
    .auto_in_d_bits_opcode   (_buffer_auto_in_d_bits_opcode),
    .auto_in_d_bits_param    (_buffer_auto_in_d_bits_param),
    .auto_in_d_bits_size     (_buffer_auto_in_d_bits_size),
    .auto_in_d_bits_source   (_buffer_auto_in_d_bits_source),
    .auto_in_d_bits_sink     (_buffer_auto_in_d_bits_sink),
    .auto_in_d_bits_denied   (_buffer_auto_in_d_bits_denied),
    .auto_in_d_bits_data     (_buffer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt  (_buffer_auto_in_d_bits_corrupt),
    .auto_out_a_ready        (auto_bus_xing_out_a_ready),
    .auto_out_a_valid        (auto_bus_xing_out_a_valid),
    .auto_out_a_bits_opcode  (auto_bus_xing_out_a_bits_opcode),
    .auto_out_a_bits_param   (auto_bus_xing_out_a_bits_param),
    .auto_out_a_bits_size    (auto_bus_xing_out_a_bits_size),
    .auto_out_a_bits_source  (auto_bus_xing_out_a_bits_source),
    .auto_out_a_bits_address (auto_bus_xing_out_a_bits_address),
    .auto_out_a_bits_mask    (auto_bus_xing_out_a_bits_mask),
    .auto_out_a_bits_data    (auto_bus_xing_out_a_bits_data),
    .auto_out_a_bits_corrupt (auto_bus_xing_out_a_bits_corrupt),
    .auto_out_d_ready        (auto_bus_xing_out_d_ready),
    .auto_out_d_valid        (auto_bus_xing_out_d_valid),
    .auto_out_d_bits_opcode  (auto_bus_xing_out_d_bits_opcode),
    .auto_out_d_bits_param   (auto_bus_xing_out_d_bits_param),
    .auto_out_d_bits_size    (auto_bus_xing_out_d_bits_size),
    .auto_out_d_bits_source  (auto_bus_xing_out_d_bits_source),
    .auto_out_d_bits_sink    (auto_bus_xing_out_d_bits_sink),
    .auto_out_d_bits_denied  (auto_bus_xing_out_d_bits_denied),
    .auto_out_d_bits_data    (auto_bus_xing_out_d_bits_data),
    .auto_out_d_bits_corrupt (auto_bus_xing_out_d_bits_corrupt)
  );	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  TLInterconnectCoupler_fbus_from_debug_sb coupler_from_debug_sb (	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .clock                              (_fixedClockNode_auto_anon_out_0_clock),	// @[generators/rocket-chip/src/main/scala/prci/ClockGroup.scala:115:114]
    .reset                              (_fixedClockNode_auto_anon_out_0_reset),	// @[generators/rocket-chip/src/main/scala/prci/ClockGroup.scala:115:114]
    .auto_widget_anon_in_a_ready        (auto_coupler_from_debug_sb_widget_anon_in_a_ready),
    .auto_widget_anon_in_a_valid        (auto_coupler_from_debug_sb_widget_anon_in_a_valid),
    .auto_widget_anon_in_a_bits_opcode  (auto_coupler_from_debug_sb_widget_anon_in_a_bits_opcode),
    .auto_widget_anon_in_a_bits_size    (auto_coupler_from_debug_sb_widget_anon_in_a_bits_size),
    .auto_widget_anon_in_a_bits_address (auto_coupler_from_debug_sb_widget_anon_in_a_bits_address),
    .auto_widget_anon_in_a_bits_data    (auto_coupler_from_debug_sb_widget_anon_in_a_bits_data),
    .auto_widget_anon_in_d_ready        (auto_coupler_from_debug_sb_widget_anon_in_d_ready),
    .auto_widget_anon_in_d_valid        (auto_coupler_from_debug_sb_widget_anon_in_d_valid),
    .auto_widget_anon_in_d_bits_opcode  (auto_coupler_from_debug_sb_widget_anon_in_d_bits_opcode),
    .auto_widget_anon_in_d_bits_param   (auto_coupler_from_debug_sb_widget_anon_in_d_bits_param),
    .auto_widget_anon_in_d_bits_size    (auto_coupler_from_debug_sb_widget_anon_in_d_bits_size),
    .auto_widget_anon_in_d_bits_sink    (auto_coupler_from_debug_sb_widget_anon_in_d_bits_sink),
    .auto_widget_anon_in_d_bits_denied  (auto_coupler_from_debug_sb_widget_anon_in_d_bits_denied),
    .auto_widget_anon_in_d_bits_data    (auto_coupler_from_debug_sb_widget_anon_in_d_bits_data),
    .auto_widget_anon_in_d_bits_corrupt (auto_coupler_from_debug_sb_widget_anon_in_d_bits_corrupt),
    .auto_tl_out_a_ready                (_fbus_xbar_auto_anon_in_0_a_ready),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_a_valid                (_coupler_from_debug_sb_auto_tl_out_a_valid),
    .auto_tl_out_a_bits_opcode          (_coupler_from_debug_sb_auto_tl_out_a_bits_opcode),
    .auto_tl_out_a_bits_size            (_coupler_from_debug_sb_auto_tl_out_a_bits_size),
    .auto_tl_out_a_bits_address         (_coupler_from_debug_sb_auto_tl_out_a_bits_address),
    .auto_tl_out_a_bits_mask            (_coupler_from_debug_sb_auto_tl_out_a_bits_mask),
    .auto_tl_out_a_bits_data            (_coupler_from_debug_sb_auto_tl_out_a_bits_data),
    .auto_tl_out_d_ready                (_coupler_from_debug_sb_auto_tl_out_d_ready),
    .auto_tl_out_d_valid                (_fbus_xbar_auto_anon_in_0_d_valid),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_d_bits_opcode          (_fbus_xbar_auto_anon_in_0_d_bits_opcode),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_d_bits_param           (_fbus_xbar_auto_anon_in_0_d_bits_param),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_d_bits_size            (_fbus_xbar_auto_anon_in_0_d_bits_size),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_d_bits_sink            (_fbus_xbar_auto_anon_in_0_d_bits_sink),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_d_bits_denied          (_fbus_xbar_auto_anon_in_0_d_bits_denied),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_d_bits_data            (_fbus_xbar_auto_anon_in_0_d_bits_data),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_d_bits_corrupt         (_fbus_xbar_auto_anon_in_0_d_bits_corrupt)	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  );	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
  TLInterconnectCoupler_fbus_from_port_named_serial_tl_0_in coupler_from_port_named_serial_tl_0_in (	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
    .clock                         (_fixedClockNode_auto_anon_out_0_clock),	// @[generators/rocket-chip/src/main/scala/prci/ClockGroup.scala:115:114]
    .reset                         (_fixedClockNode_auto_anon_out_0_reset),	// @[generators/rocket-chip/src/main/scala/prci/ClockGroup.scala:115:114]
    .auto_buffer_in_a_ready        (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_ready),
    .auto_buffer_in_a_valid        (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_valid),
    .auto_buffer_in_a_bits_opcode  (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_bits_opcode),
    .auto_buffer_in_a_bits_param   (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_bits_param),
    .auto_buffer_in_a_bits_size    (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_bits_size),
    .auto_buffer_in_a_bits_source  (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_bits_source),
    .auto_buffer_in_a_bits_address (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_bits_address),
    .auto_buffer_in_a_bits_mask    (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_bits_mask),
    .auto_buffer_in_a_bits_data    (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_bits_data),
    .auto_buffer_in_a_bits_corrupt (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_a_bits_corrupt),
    .auto_buffer_in_d_ready        (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_ready),
    .auto_buffer_in_d_valid        (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_valid),
    .auto_buffer_in_d_bits_opcode  (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_bits_opcode),
    .auto_buffer_in_d_bits_param   (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_bits_param),
    .auto_buffer_in_d_bits_size    (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_bits_size),
    .auto_buffer_in_d_bits_source  (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_bits_source),
    .auto_buffer_in_d_bits_sink    (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_bits_sink),
    .auto_buffer_in_d_bits_denied  (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_bits_denied),
    .auto_buffer_in_d_bits_data    (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_bits_data),
    .auto_buffer_in_d_bits_corrupt (auto_coupler_from_port_named_serial_tl_0_in_buffer_in_d_bits_corrupt),
    .auto_tl_out_a_ready           (_fbus_xbar_auto_anon_in_1_a_ready),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_a_valid           (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_valid),
    .auto_tl_out_a_bits_opcode     (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_opcode),
    .auto_tl_out_a_bits_param      (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_param),
    .auto_tl_out_a_bits_size       (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_size),
    .auto_tl_out_a_bits_source     (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_source),
    .auto_tl_out_a_bits_address    (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_address),
    .auto_tl_out_a_bits_mask       (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_mask),
    .auto_tl_out_a_bits_data       (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_data),
    .auto_tl_out_a_bits_corrupt    (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_a_bits_corrupt),
    .auto_tl_out_d_ready           (_coupler_from_port_named_serial_tl_0_in_auto_tl_out_d_ready),
    .auto_tl_out_d_valid           (_fbus_xbar_auto_anon_in_1_d_valid),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_d_bits_opcode     (_fbus_xbar_auto_anon_in_1_d_bits_opcode),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_d_bits_param      (_fbus_xbar_auto_anon_in_1_d_bits_param),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_d_bits_size       (_fbus_xbar_auto_anon_in_1_d_bits_size),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_d_bits_source     (_fbus_xbar_auto_anon_in_1_d_bits_source),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_d_bits_sink       (_fbus_xbar_auto_anon_in_1_d_bits_sink),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_d_bits_denied     (_fbus_xbar_auto_anon_in_1_d_bits_denied),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_d_bits_data       (_fbus_xbar_auto_anon_in_1_d_bits_data),	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
    .auto_tl_out_d_bits_corrupt    (_fbus_xbar_auto_anon_in_1_d_bits_corrupt)	// @[generators/rocket-chip/src/main/scala/tilelink/BusWrapper.scala:240:32]
  );	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyScope.scala:98:27]
endmodule

