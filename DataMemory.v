module DataMemory(
input clk,
input MemWrite,
input MemRead,
input [31:0] address,
input [31:0] write_data,
output reg [31:0] read_data
);
reg [31:0] memory [0:511];
wire [8:0] word_addr;
assign word_addr=address[8:0];
always @(posedge clk) begin
if (MemWrite)
memory[word_addr]<=write_data;
else if (MemRead)
read_data<=memory[word_addr];
end
endmodule
