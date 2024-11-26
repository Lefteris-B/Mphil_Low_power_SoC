// Generated by CIRCT firtool-1.75.0
// VCS coverage exclude_file
module head_2x4(	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18]
  input        R0_addr,
  input        R0_en,
  input        R0_clk,
  output [3:0] R0_data,
  input        W0_addr,
  input        W0_en,
  input        W0_clk,
  input  [3:0] W0_data,
  input        W1_addr,
  input        W1_en,
  input        W1_clk,
  input  [3:0] W1_data
);

  reg [3:0] Memory[0:1];	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18]
  always @(posedge W0_clk) begin	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18]
    if (W0_en & 1'h1)	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18]
      Memory[W0_addr] <= W0_data;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18]
    if (W1_en & 1'h1)	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18]
      Memory[W1_addr] <= W1_data;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18]
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_MEM_	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18]
    reg [31:0] _RANDOM_MEM;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18]
    initial begin	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18]
      `INIT_RANDOM_PROLOG_	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18]
      `ifdef RANDOMIZE_MEM_INIT	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18]
        for (logic [1:0] i = 2'h0; i < 2'h2; i += 2'h1) begin
          _RANDOM_MEM = `RANDOM;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18]
          Memory[i[0]] = _RANDOM_MEM[3:0];	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18]
        end
      `endif // RANDOMIZE_MEM_INIT
    end // initial
  `endif // ENABLE_INITIAL_MEM_
  assign R0_data = R0_en ? Memory[R0_addr] : 4'bx;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18]
endmodule

