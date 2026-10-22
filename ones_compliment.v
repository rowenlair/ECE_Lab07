module ones_compliment(
    input [3:0]A,
    input [3:0]B,
    output [3:0]Y
    );
    
    wire [3:0]carry1;
    wire [2:0]carry2;
    wire [3:0]sum;
    
    full_adder fa0 (
        .A(A[0]),
        .B(B[0]),
        .Cin(1'b0),
        .Y(sum[0]),
        .Cout(carry1[0])
        );
        
    full_adder fa1 (
        .A(A[1]),
        .B(B[1]),
        .Cin(carry1[0]),
        .Y(sum[1]),
        .Cout(carry1[1])
        );
        
   full_adder fa2 (
        .A(A[2]),
        .B(B[2]),
        .Cin(carry1[1]),
        .Y(sum[2]),
        .Cout(carry1[2])
        );
        
   full_adder fa3 (
        .A(A[3]),
        .B(B[3]),
        .Cin(carry1[2]),
        .Y(sum[3]),
        .Cout(carry1[3])
        );
        
   full_adder fb0 (
        .A(sum[0]),
        .B(1'b0),
        .Cin(carry1[3]),
        .Y(Y[0]),
        .Cout(carry2[0])
        );
        
    full_adder fb1 (
        .A(sum[1]),
        .B(1'b0),
        .Cin(carry2[0]),
        .Y(Y[1]),
        .Cout(carry2[1])
        );
        
   full_adder fb2 (
        .A(sum[2]),
        .B(1'b0),
        .Cin(carry2[1]),
        .Y(Y[2]),
        .Cout(carry2[2])
        ); 
        
   full_adder fb3 (
        .A(sum[3]),
        .B(1'b0),
        .Cin(carry2[2]),
        .Y(Y[3])
        );
endmodule