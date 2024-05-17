//hello python
//start FPGA top define 
module fpga_top (
//start PORT define 
output tx_R19,
output tx_T11,
output tx_T10,
output tx_T12,
output tx_U12,
output tx_U13,
output tx_V13,
output tx_V12,
output tx_W13,
output tx_T14,
output tx_T15,
output tx_P14,
output tx_R14,
output tx_Y16,
output tx_Y17,
output tx_W14,
output tx_Y14,
output tx_T16,
output tx_U17,
output tx_V15,
output tx_W15,
output tx_U14,
output tx_U15,
output tx_U18,
output tx_U19,
output tx_P19,
output tx_N20,
output tx_P20,
output tx_T20,
output tx_U20,
output tx_V20,
output tx_W20,
output tx_Y18,
output tx_Y19,
output tx_V16,
output tx_W16,
output tx_R16,
output tx_R17,
output tx_T17,
output tx_R18,
output tx_V17,
output tx_V18,
output tx_W18,
output tx_W19,
output tx_N17,
output tx_P18,
output tx_P15,
output tx_P16,
output tx_T19,
output tx_G14,
output tx_C20,
output tx_B20,
output tx_B19,
output tx_A20,
output tx_E17,
output tx_D18,
output tx_D19,
output tx_D20,
output tx_E18,
output tx_E19,
output tx_F16,
output tx_F17,
output tx_M19,
output tx_M20,
output tx_M17,
output tx_M18,
output tx_L19,
output tx_L20,
output tx_K19,
output tx_J19,
output tx_L16,
output tx_L17,
output tx_K17,
output tx_K18,
output tx_H16,
output tx_H17,
output tx_J18,
output tx_H18,
output tx_F19,
output tx_F20,
output tx_G17,
output tx_G18,
output tx_J20,
output tx_H20,
output tx_G19,
output tx_G20,
output tx_H15,
output tx_G15,
output tx_K14,
output tx_J14,
output tx_N15,
output tx_N16,
output tx_L14,
output tx_L15,
output tx_M14,
output tx_M15,
output tx_K16,
output tx_J16,
output tx_J15,
input clk );



reg [20-1:0] cnt;
always@(posedge clk)
    cnt <= cnt + {19'h0,~(&cnt)};
assign rst_n = cnt == 20'hf_ffff;



//start PORT R19
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd1), .CLKFREQ ('d50_000_000 )) U_R19(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd82), 
    .d1(8'd49), 
    .d2(8'd57), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_R19));
//start PORT T11
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd2), .CLKFREQ ('d50_000_000 )) U_T11(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd84), 
    .d1(8'd49), 
    .d2(8'd49), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_T11));
//start PORT T10
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd3), .CLKFREQ ('d50_000_000 )) U_T10(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd84), 
    .d1(8'd49), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_T10));
//start PORT T12
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd4), .CLKFREQ ('d50_000_000 )) U_T12(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd84), 
    .d1(8'd49), 
    .d2(8'd50), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_T12));
//start PORT U12
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd5), .CLKFREQ ('d50_000_000 )) U_U12(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd85), 
    .d1(8'd49), 
    .d2(8'd50), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_U12));
//start PORT U13
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd6), .CLKFREQ ('d50_000_000 )) U_U13(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd85), 
    .d1(8'd49), 
    .d2(8'd51), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_U13));
//start PORT V13
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd7), .CLKFREQ ('d50_000_000 )) U_V13(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd86), 
    .d1(8'd49), 
    .d2(8'd51), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_V13));
//start PORT V12
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd8), .CLKFREQ ('d50_000_000 )) U_V12(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd86), 
    .d1(8'd49), 
    .d2(8'd50), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_V12));
//start PORT W13
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd9), .CLKFREQ ('d50_000_000 )) U_W13(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd87), 
    .d1(8'd49), 
    .d2(8'd51), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_W13));
//start PORT T14
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd10), .CLKFREQ ('d50_000_000 )) U_T14(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd84), 
    .d1(8'd49), 
    .d2(8'd52), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_T14));
//start PORT T15
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd11), .CLKFREQ ('d50_000_000 )) U_T15(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd84), 
    .d1(8'd49), 
    .d2(8'd53), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_T15));
//start PORT P14
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd12), .CLKFREQ ('d50_000_000 )) U_P14(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd80), 
    .d1(8'd49), 
    .d2(8'd52), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_P14));
//start PORT R14
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd13), .CLKFREQ ('d50_000_000 )) U_R14(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd82), 
    .d1(8'd49), 
    .d2(8'd52), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_R14));
//start PORT Y16
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd14), .CLKFREQ ('d50_000_000 )) U_Y16(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd89), 
    .d1(8'd49), 
    .d2(8'd54), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_Y16));
//start PORT Y17
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd15), .CLKFREQ ('d50_000_000 )) U_Y17(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd89), 
    .d1(8'd49), 
    .d2(8'd55), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_Y17));
//start PORT W14
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd16), .CLKFREQ ('d50_000_000 )) U_W14(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd87), 
    .d1(8'd49), 
    .d2(8'd52), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_W14));
//start PORT Y14
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd17), .CLKFREQ ('d50_000_000 )) U_Y14(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd89), 
    .d1(8'd49), 
    .d2(8'd52), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_Y14));
//start PORT T16
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd18), .CLKFREQ ('d50_000_000 )) U_T16(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd84), 
    .d1(8'd49), 
    .d2(8'd54), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_T16));
//start PORT U17
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd19), .CLKFREQ ('d50_000_000 )) U_U17(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd85), 
    .d1(8'd49), 
    .d2(8'd55), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_U17));
//start PORT V15
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd20), .CLKFREQ ('d50_000_000 )) U_V15(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd86), 
    .d1(8'd49), 
    .d2(8'd53), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_V15));
//start PORT W15
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd21), .CLKFREQ ('d50_000_000 )) U_W15(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd87), 
    .d1(8'd49), 
    .d2(8'd53), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_W15));
//start PORT U14
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd22), .CLKFREQ ('d50_000_000 )) U_U14(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd85), 
    .d1(8'd49), 
    .d2(8'd52), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_U14));
//start PORT U15
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd23), .CLKFREQ ('d50_000_000 )) U_U15(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd85), 
    .d1(8'd49), 
    .d2(8'd53), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_U15));
//start PORT U18
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd24), .CLKFREQ ('d50_000_000 )) U_U18(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd85), 
    .d1(8'd49), 
    .d2(8'd56), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_U18));
//start PORT U19
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd25), .CLKFREQ ('d50_000_000 )) U_U19(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd85), 
    .d1(8'd49), 
    .d2(8'd57), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_U19));
//start PORT P19
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd26), .CLKFREQ ('d50_000_000 )) U_P19(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd80), 
    .d1(8'd49), 
    .d2(8'd57), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_P19));
//start PORT N20
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd27), .CLKFREQ ('d50_000_000 )) U_N20(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd78), 
    .d1(8'd50), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_N20));
//start PORT P20
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd28), .CLKFREQ ('d50_000_000 )) U_P20(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd80), 
    .d1(8'd50), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_P20));
//start PORT T20
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd29), .CLKFREQ ('d50_000_000 )) U_T20(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd84), 
    .d1(8'd50), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_T20));
//start PORT U20
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd30), .CLKFREQ ('d50_000_000 )) U_U20(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd85), 
    .d1(8'd50), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_U20));
//start PORT V20
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd31), .CLKFREQ ('d50_000_000 )) U_V20(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd86), 
    .d1(8'd50), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_V20));
//start PORT W20
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd32), .CLKFREQ ('d50_000_000 )) U_W20(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd87), 
    .d1(8'd50), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_W20));
//start PORT Y18
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd33), .CLKFREQ ('d50_000_000 )) U_Y18(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd89), 
    .d1(8'd49), 
    .d2(8'd56), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_Y18));
//start PORT Y19
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd34), .CLKFREQ ('d50_000_000 )) U_Y19(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd89), 
    .d1(8'd49), 
    .d2(8'd57), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_Y19));
//start PORT V16
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd35), .CLKFREQ ('d50_000_000 )) U_V16(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd86), 
    .d1(8'd49), 
    .d2(8'd54), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_V16));
//start PORT W16
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd36), .CLKFREQ ('d50_000_000 )) U_W16(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd87), 
    .d1(8'd49), 
    .d2(8'd54), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_W16));
//start PORT R16
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd37), .CLKFREQ ('d50_000_000 )) U_R16(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd82), 
    .d1(8'd49), 
    .d2(8'd54), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_R16));
//start PORT R17
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd38), .CLKFREQ ('d50_000_000 )) U_R17(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd82), 
    .d1(8'd49), 
    .d2(8'd55), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_R17));
//start PORT T17
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd39), .CLKFREQ ('d50_000_000 )) U_T17(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd84), 
    .d1(8'd49), 
    .d2(8'd55), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_T17));
//start PORT R18
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd40), .CLKFREQ ('d50_000_000 )) U_R18(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd82), 
    .d1(8'd49), 
    .d2(8'd56), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_R18));
//start PORT V17
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd41), .CLKFREQ ('d50_000_000 )) U_V17(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd86), 
    .d1(8'd49), 
    .d2(8'd55), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_V17));
//start PORT V18
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd42), .CLKFREQ ('d50_000_000 )) U_V18(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd86), 
    .d1(8'd49), 
    .d2(8'd56), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_V18));
//start PORT W18
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd43), .CLKFREQ ('d50_000_000 )) U_W18(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd87), 
    .d1(8'd49), 
    .d2(8'd56), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_W18));
//start PORT W19
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd44), .CLKFREQ ('d50_000_000 )) U_W19(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd87), 
    .d1(8'd49), 
    .d2(8'd57), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_W19));
//start PORT N17
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd45), .CLKFREQ ('d50_000_000 )) U_N17(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd78), 
    .d1(8'd49), 
    .d2(8'd55), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_N17));
//start PORT P18
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd46), .CLKFREQ ('d50_000_000 )) U_P18(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd80), 
    .d1(8'd49), 
    .d2(8'd56), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_P18));
//start PORT P15
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd47), .CLKFREQ ('d50_000_000 )) U_P15(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd80), 
    .d1(8'd49), 
    .d2(8'd53), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_P15));
//start PORT P16
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd48), .CLKFREQ ('d50_000_000 )) U_P16(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd80), 
    .d1(8'd49), 
    .d2(8'd54), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_P16));
//start PORT T19
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd49), .CLKFREQ ('d50_000_000 )) U_T19(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd84), 
    .d1(8'd49), 
    .d2(8'd57), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_T19));
//start PORT G14
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd50), .CLKFREQ ('d50_000_000 )) U_G14(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd71), 
    .d1(8'd49), 
    .d2(8'd52), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_G14));
//start PORT C20
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd51), .CLKFREQ ('d50_000_000 )) U_C20(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd67), 
    .d1(8'd50), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_C20));
//start PORT B20
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd52), .CLKFREQ ('d50_000_000 )) U_B20(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd66), 
    .d1(8'd50), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_B20));
//start PORT B19
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd53), .CLKFREQ ('d50_000_000 )) U_B19(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd66), 
    .d1(8'd49), 
    .d2(8'd57), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_B19));
//start PORT A20
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd54), .CLKFREQ ('d50_000_000 )) U_A20(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd65), 
    .d1(8'd50), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_A20));
//start PORT E17
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd55), .CLKFREQ ('d50_000_000 )) U_E17(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd69), 
    .d1(8'd49), 
    .d2(8'd55), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_E17));
//start PORT D18
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd56), .CLKFREQ ('d50_000_000 )) U_D18(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd68), 
    .d1(8'd49), 
    .d2(8'd56), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_D18));
//start PORT D19
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd57), .CLKFREQ ('d50_000_000 )) U_D19(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd68), 
    .d1(8'd49), 
    .d2(8'd57), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_D19));
//start PORT D20
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd58), .CLKFREQ ('d50_000_000 )) U_D20(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd68), 
    .d1(8'd50), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_D20));
//start PORT E18
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd59), .CLKFREQ ('d50_000_000 )) U_E18(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd69), 
    .d1(8'd49), 
    .d2(8'd56), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_E18));
//start PORT E19
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd60), .CLKFREQ ('d50_000_000 )) U_E19(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd69), 
    .d1(8'd49), 
    .d2(8'd57), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_E19));
//start PORT F16
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd61), .CLKFREQ ('d50_000_000 )) U_F16(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd70), 
    .d1(8'd49), 
    .d2(8'd54), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_F16));
//start PORT F17
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd62), .CLKFREQ ('d50_000_000 )) U_F17(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd70), 
    .d1(8'd49), 
    .d2(8'd55), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_F17));
//start PORT M19
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd63), .CLKFREQ ('d50_000_000 )) U_M19(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd77), 
    .d1(8'd49), 
    .d2(8'd57), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_M19));
//start PORT M20
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd64), .CLKFREQ ('d50_000_000 )) U_M20(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd77), 
    .d1(8'd50), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_M20));
//start PORT M17
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd65), .CLKFREQ ('d50_000_000 )) U_M17(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd77), 
    .d1(8'd49), 
    .d2(8'd55), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_M17));
//start PORT M18
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd66), .CLKFREQ ('d50_000_000 )) U_M18(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd77), 
    .d1(8'd49), 
    .d2(8'd56), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_M18));
//start PORT L19
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd67), .CLKFREQ ('d50_000_000 )) U_L19(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd76), 
    .d1(8'd49), 
    .d2(8'd57), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_L19));
//start PORT L20
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd68), .CLKFREQ ('d50_000_000 )) U_L20(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd76), 
    .d1(8'd50), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_L20));
//start PORT K19
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd69), .CLKFREQ ('d50_000_000 )) U_K19(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd75), 
    .d1(8'd49), 
    .d2(8'd57), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_K19));
//start PORT J19
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd70), .CLKFREQ ('d50_000_000 )) U_J19(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd74), 
    .d1(8'd49), 
    .d2(8'd57), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_J19));
//start PORT L16
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd71), .CLKFREQ ('d50_000_000 )) U_L16(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd76), 
    .d1(8'd49), 
    .d2(8'd54), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_L16));
//start PORT L17
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd72), .CLKFREQ ('d50_000_000 )) U_L17(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd76), 
    .d1(8'd49), 
    .d2(8'd55), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_L17));
//start PORT K17
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd73), .CLKFREQ ('d50_000_000 )) U_K17(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd75), 
    .d1(8'd49), 
    .d2(8'd55), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_K17));
//start PORT K18
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd74), .CLKFREQ ('d50_000_000 )) U_K18(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd75), 
    .d1(8'd49), 
    .d2(8'd56), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_K18));
//start PORT H16
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd75), .CLKFREQ ('d50_000_000 )) U_H16(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd72), 
    .d1(8'd49), 
    .d2(8'd54), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_H16));
//start PORT H17
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd76), .CLKFREQ ('d50_000_000 )) U_H17(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd72), 
    .d1(8'd49), 
    .d2(8'd55), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_H17));
//start PORT J18
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd77), .CLKFREQ ('d50_000_000 )) U_J18(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd74), 
    .d1(8'd49), 
    .d2(8'd56), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_J18));
//start PORT H18
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd78), .CLKFREQ ('d50_000_000 )) U_H18(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd72), 
    .d1(8'd49), 
    .d2(8'd56), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_H18));
//start PORT F19
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd79), .CLKFREQ ('d50_000_000 )) U_F19(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd70), 
    .d1(8'd49), 
    .d2(8'd57), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_F19));
//start PORT F20
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd80), .CLKFREQ ('d50_000_000 )) U_F20(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd70), 
    .d1(8'd50), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_F20));
//start PORT G17
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd81), .CLKFREQ ('d50_000_000 )) U_G17(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd71), 
    .d1(8'd49), 
    .d2(8'd55), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_G17));
//start PORT G18
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd82), .CLKFREQ ('d50_000_000 )) U_G18(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd71), 
    .d1(8'd49), 
    .d2(8'd56), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_G18));
//start PORT J20
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd83), .CLKFREQ ('d50_000_000 )) U_J20(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd74), 
    .d1(8'd50), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_J20));
//start PORT H20
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd84), .CLKFREQ ('d50_000_000 )) U_H20(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd72), 
    .d1(8'd50), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_H20));
//start PORT G19
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd85), .CLKFREQ ('d50_000_000 )) U_G19(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd71), 
    .d1(8'd49), 
    .d2(8'd57), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_G19));
//start PORT G20
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd86), .CLKFREQ ('d50_000_000 )) U_G20(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd71), 
    .d1(8'd50), 
    .d2(8'd48), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_G20));
//start PORT H15
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd87), .CLKFREQ ('d50_000_000 )) U_H15(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd72), 
    .d1(8'd49), 
    .d2(8'd53), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_H15));
//start PORT G15
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd88), .CLKFREQ ('d50_000_000 )) U_G15(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd71), 
    .d1(8'd49), 
    .d2(8'd53), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_G15));
//start PORT K14
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd89), .CLKFREQ ('d50_000_000 )) U_K14(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd75), 
    .d1(8'd49), 
    .d2(8'd52), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_K14));
//start PORT J14
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd90), .CLKFREQ ('d50_000_000 )) U_J14(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd74), 
    .d1(8'd49), 
    .d2(8'd52), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_J14));
//start PORT N15
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd91), .CLKFREQ ('d50_000_000 )) U_N15(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd78), 
    .d1(8'd49), 
    .d2(8'd53), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_N15));
//start PORT N16
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd92), .CLKFREQ ('d50_000_000 )) U_N16(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd78), 
    .d1(8'd49), 
    .d2(8'd54), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_N16));
//start PORT L14
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd93), .CLKFREQ ('d50_000_000 )) U_L14(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd76), 
    .d1(8'd49), 
    .d2(8'd52), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_L14));
//start PORT L15
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd94), .CLKFREQ ('d50_000_000 )) U_L15(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd76), 
    .d1(8'd49), 
    .d2(8'd53), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_L15));
//start PORT M14
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd95), .CLKFREQ ('d50_000_000 )) U_M14(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd77), 
    .d1(8'd49), 
    .d2(8'd52), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_M14));
//start PORT M15
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd96), .CLKFREQ ('d50_000_000 )) U_M15(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd77), 
    .d1(8'd49), 
    .d2(8'd53), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_M15));
//start PORT K16
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd97), .CLKFREQ ('d50_000_000 )) U_K16(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd75), 
    .d1(8'd49), 
    .d2(8'd54), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_K16));
//start PORT J16
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd98), .CLKFREQ ('d50_000_000 )) U_J16(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd74), 
    .d1(8'd49), 
    .d2(8'd54), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_J16));
//start PORT J15
tx8 #(.BAUD('d115_200 ), .INIT_PAHSE (8'd99), .CLKFREQ ('d50_000_000 )) U_J15(
    .clk     (clk), .rst_n   (rst_n),
    .d0(8'd74), 
    .d1(8'd49), 
    .d2(8'd53), 
    .d3(8'd32), 
    .d4(8'd32), 
    .d5(8'd32), 
    .d6(8'd32), 
    .d7(8'd32), 
    .UART_tx (tx_J15));
endmodule
