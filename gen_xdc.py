print("#//hello python");
list_ports=["R19","T11","T10","T12","U12","U13","V13","V12","W13","T14","T15","P14","R14","Y16","Y17","W14","Y14","T16","U17","V15","W15","U14","U15","U18","U19","P19","N20","P20","T20","U20","V20","W20","Y18","Y19","V16","W16","R16","R17","T17","R18","V17","V18","W18","W19","N17","P18","P15","P16","T19","G14","C20","B20","B19","A20","E17","D18","D19","D20","E18","E19","F16","F17","M19","M20","M17","M18","L19","L20","K19","J19","L16","L17","K17","K18","H16","H17","J18","H18","F19","F20","G17","G18","J20","H20","G19","G20","H15","G15","K14","J14","N15","N16","L14","L15","M14","M15","K16","J16","J15"];

cnt_index = 0;
print("set_property  -dict {PACKAGE_PIN   N18  IOSTANDARD LVCMOS33} [get_ports  clk ]");
for ii in list_ports:
    print("set_property  -dict {PACKAGE_PIN  " + ii + "  IOSTANDARD LVCMOS33} [get_ports tx_" + ii + "]");
# print("input clk );");
# 
# print("")
# print("")
# print("")
# print("reg [20-1:0] cnt;")
# print("always@(posedge clk)")
# print("    cnt <= cnt + {19'h0,~(&cnt)};")
# print("assign rst_n = cnt == 20'hf_ffff;")
# print("")
# print("")
# print("")
# 
# for ii in list_ports:
#     cnt_index += 1;
#     print("//start PORT " + ii);
#     print("tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd" + str(cnt_index) + "), .CLKFREQ ('d50_000_000 )) U_" + ii + "(")
#     print("    .clk     (clk), .rst_n   (rst_n),");
#     cnt_cc = 0;
#     for cc_index in  range(8):
#         if (cc_index < len(ii)):
#             cc = ii[cc_index]
#         else:
#             cc = " "
#         print("    .d" + str(cc_index) + "(8'd" + str(ord(cc)) + "), ");
#     print("    .UART_tx (tx_" + ii + "));")
# 
# 
# 
# print("endmodule")
# 
# #        .d0 (8'h10), .d1 (8'h21), .d2 (8'h32), .d3 (8'h43), .d4 (8'h54), .d5 (8'h65), .d6 (8'h76), .d7 (8'h87),
#         #print(cc)
#         #print("8'd"+str(ord(cc)))
# 
# #tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd1), .CLKFREQ ('d50_000_000 )) U_XXX(
# #.clk     (rst_n), .rst_n   (sys_rst_n),
# #.d0 (8'h10), .d1 (8'h21), .d2 (8'h32), .d3 (8'h43), .d4 (8'h54), .d5 (8'h65), .d6 (8'h76), .d7 (8'h87),
# #.UART_tx (tx));
# #
# #print("space is 8'd"+str(ord(" ")))
# #print(" #\\n is 8'd"+str(ord("\n")))
# #
