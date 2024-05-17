`timescale 1ns/1ps
module edge_det #( 
    parameter   FF_NUM = 2 
) ( 
    input clk,
    input rst_n,
    input din,
    output din_pos_edge,
    output din_neg_edge
    ); 
generate
//gen_edge_det
if (FF_NUM == 1) begin
    reg               din_ff;
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) 
            din_ff <= 1'b1;
        else 
            din_ff <= din  ;
    end
    assign  din_pos_edge = din & ~din_ff; 
    
    reg  [FF_NUM-1:0] din_fall_ff;
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) 
            din_fall_ff <= 1'b0;
        else 
            din_fall_ff <= din  ;
    end
    assign  din_neg_edge = ~din & din_fall_ff; 
end
else begin
    reg  [FF_NUM-1:0] din_ff;
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) 
            din_ff <= {FF_NUM{1'b1}};
        else 
            din_ff <= { din_ff[FF_NUM-2:0],din } ;
    end
    assign  din_pos_edge = din_ff[FF_NUM-2] & ~din_ff[FF_NUM-1]; 
    
    reg  [FF_NUM-1:0] din_fall_ff;
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) 
            din_fall_ff <= {FF_NUM{1'b0}};
        else 
            din_fall_ff <= { din_fall_ff[FF_NUM-2:0],din } ;
    end
    assign  din_neg_edge = ~din_fall_ff[FF_NUM-2] & din_fall_ff[FF_NUM-1]; 
end
endgenerate 
endmodule 
