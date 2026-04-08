module AddressDecoder(
input [31:0] address,
input MemWrite,
input MemRead,
output DataMemWrite,
output DataMemRead,
output LEDWrite,
output SwitchReadEnable
);
wire [1:0] device_select;
assign device_select = address[9:8];
assign DataMemWrite=(device_select == 2'b00) & MemWrite;
assign DataMemRead=(device_select == 2'b00) & MemRead;
assign LEDWrite=(device_select==2'b01) & MemWrite;
assign SwitchReadEnable=(device_select==2'b10) & MemRead;
endmodule
