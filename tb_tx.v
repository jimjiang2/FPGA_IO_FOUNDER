`timescale 1ns / 1ns
 
module tb_uart_tx();
 
reg                sys_clk     ;
reg                sys_rst_n   ;                             
reg       [7:0]    pi_data     ;
reg                pi_flag     ;
        
wire               tx          ;
 
 
initial begin
    sys_clk = 1'b0;
    sys_rst_n <= 1'b0;
    #201
    sys_rst_n <= 1'b1;
end
 
 
always #10 sys_clk = ~sys_clk;
 
initial begin
    pi_flag <= 1'b0;
    pi_data <= 8'd0;
    #401
    pi_data <= 8'd0;
    pi_flag <= 1'd1;
    #20
    pi_flag <= 1'd0;
    #(434*10*20)
    pi_data <= 8'd15;
    pi_flag <= 1'd1;
    #20
    pi_flag <= 1'd0;
    #(434*10*20)
    pi_data <= 8'd2;
    pi_flag <= 1'd1;
    #20
    pi_flag <= 1'd0;
    #(434*10*20)
    pi_data <= 8'd3;
    pi_flag <= 1'd1;
    #20
    pi_flag <= 1'd0;
    #(434*10*20)
    pi_data <= 8'd4;
    pi_flag <= 1'd1;
    #20
    pi_flag <= 1'd0;
    #(434*10*20)
    pi_data <= 8'd5;
    pi_flag <= 1'd1;
    #20
    pi_flag <= 1'd0;
    #(434*10*20)
    pi_data <= 8'd6;
    pi_flag <= 1'd1;
    #20
    pi_flag <= 1'd0;
    #(434*10*20)
    pi_data <= 8'd7;
    pi_flag <= 1'd1;
    #20
    pi_flag <= 1'd0;
#5_000_000_000
    $finish;
end
 
//uart_tx
//#(
//    .BAUD('d115_200     )       ,
//    .CLK ('d50_000_000  )
//)uart_tx_inst
//(
//    .clk     (sys_clk  ),
//    .rstn   (sys_rst_n),
//                           
//    .data_in     (pi_data  ),
//    .flag_in     (pi_flag  ),
//                           
//    .UART_tx    (tx       )
//);
tx8 #(
    .BAUD('d115_200 ),
    .INIT_PAHSE (8'd1),
    .CLKFREQ ('d50_000_000 )
) uart_tx_inst(
    .clk     (sys_clk  ),
    .rst_n   (sys_rst_n),
    .d0 (8'h10),   // 需要发送的数据
    .d1 (8'h21),   // 需要发送的数据
    .d2 (8'h32),   // 需要发送的数据
    .d3 (8'h43),   // 需要发送的数据
    .d4 (8'h54),   // 需要发送的数据
    .d5 (8'h65),   // 需要发送的数据
    .d6 (8'h76),   // 需要发送的数据
    .d7 (8'h87),   // 需要发送的数据
    .UART_tx    (tx       )
);


 initial	begin                            
	    $fsdbDumpfile("wave.fsdb");	        
        $fsdbDumpvars;                      
        $fsdbDumpMDA();                      
end             
endmodule
