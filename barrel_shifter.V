module barrel_shifter (
    input [3:0] in,
    input [1:0] shift_amt,
    input dir, // 0: left, 1: right
    output reg [3:0] out
);
    always @(*) begin
        if (dir == 0)
            out = in << shift_amt;
        else
            out = in >> shift_amt;
    end
endmodule
