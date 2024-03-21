//PC模块
module pc_reg(
    intput wire                 clk,
    intput wire                 rst,
    output reg['InstAddrBus]    pc,
    output reg                  ce
);
always @(posedge clk) begin
    if(rst=='RstEnable) 
        ce<='ChipDisable;
    else 
        ce<='ChopEnable;
end

always @(posedge clk) begin
    if(ce=='ChipDisable)
        pc<=32'h00000000;
    else
        pc<=pc+4'h4;
end

endmodule
