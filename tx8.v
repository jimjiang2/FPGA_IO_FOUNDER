module tx8 #(
    parameter  CLKFREQ     =   26'd50000000 ,    // 时钟频率
    parameter  BAUD        =   17'd115200   ,     // 波特率
    parameter  INIT_PAHSE  =   8'd50
) (
    input   clk, rst_n,
    input      [7 : 0] d0,   // 需要发送的数据
    input      [7 : 0] d1,   // 需要发送的数据
    input      [7 : 0] d2,   // 需要发送的数据
    input      [7 : 0] d3,   // 需要发送的数据
    input      [7 : 0] d4,   // 需要发送的数据
    input      [7 : 0] d5,   // 需要发送的数据
    input      [7 : 0] d6,   // 需要发送的数据
    input      [7 : 0] d7,   // 需要发送的数据
    output     UART_tx
);

reg [7:0] tx_data;
wire tx_done ;
reg [2:0]  cnt_byte_index;
reg   pi_flag;
reg  [26:0]  cnt_wait ;
wire [25:0]  clk_freq = CLKFREQ;
always @(posedge clk or negedge rst_n) 
    if(!rst_n) 
        cnt_wait <= CLKFREQ;
    else if(cnt_wait == CLKFREQ + clk_freq[25:8] * INIT_PAHSE )
        cnt_wait <= clk_freq[25:8] * INIT_PAHSE; 
    else 
        cnt_wait <= cnt_wait + 1; 


reg tx_en;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) 
        tx_en  <= 1'b0; 
    else if(cnt_wait == CLKFREQ + clk_freq[25:8] * INIT_PAHSE )
        tx_en  <= 1'b1; 
    else if(tx_done && cnt_byte_index == 3'h7) 
        tx_en  <= 1'b0; 
    else;
end

localparam Baud_Clk     =   CLKFREQ/BAUD       ;    // 传输每个 Baud 需要的时钟数
    // 波特计数器
reg [3:0]  cnt_flag;
reg [8:0]  cnt_baud;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt_baud <= 9'd0;
    end
    // 传输完成所有波特或者使能失效，表示发送结束
//    else if(cnt_baud == Baud_Clk - 1'b1 || tx_en == 1'b0) begin
//        cnt_baud <= 9'd0;
//    end
    else begin
        cnt_baud <= cnt_baud + 9'd1;
    end
end

wire baud_en = cnt_baud == 9'h00f;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt_flag <= 4'd0;
    end
    else if(baud_en == 1'b1)
        cnt_flag <= cnt_flag + 4'd1;
end


always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        pi_flag  <= 1'b0;
    end
    else if(cnt_flag == 4'h1 && baud_en)
        pi_flag  <= 1'b1;
    else 
        pi_flag  <= 1'b0;
end


always @(posedge clk or negedge rst_n) 
    if(!rst_n) 
        cnt_byte_index <= 3'h0;
    else if (tx_done) 
            cnt_byte_index <= cnt_byte_index + 1;
    else if( tx_en == 1'b0) 
        cnt_byte_index <= 3'h0;

always@(*)
    case(cnt_byte_index)
    3'h0: tx_data = d0;
    3'h1: tx_data = d1;
    3'h2: tx_data = d2;
    3'h3: tx_data = d3;
    3'h4: tx_data = d4;
    3'h5: tx_data = d5;
    3'h6: tx_data = d6;
    3'h7: tx_data = d7;
    endcase;

uart_tx
#(
    .BAUD(BAUD     ) ,
    .CLK (CLKFREQ  )
)uart_tx_inst
(
    .clk     (clk  ),
    .rstn    (rst_n),
                           
    .data_in     (tx_data ),
    .tx_done     (tx_done ),
    .flag_in     (pi_flag & tx_en  ),
                           
    .UART_tx    (UART_tx)
);

endmodule
