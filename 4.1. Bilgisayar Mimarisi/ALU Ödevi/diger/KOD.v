module alu(
           input [7:0] AC,
	   input [7:0] Sayi,  // ALU 8-bit Inputs                 
           input [3:0] Secme,// ALU Selection
           output [7:0] ALU_Out, // ALU 8-bit Output
           output CarryOut // Carry Out Flag
    );
    reg [7:0] ALU_Result;
    wire [8:0] tmp;
    assign ALU_Out = ALU_Result; // ALU out
    assign tmp = {1'b0,AC} + {1'b0,Sayi};
    assign CarryOut = tmp[8]; // Carryout flag
    always @(*)
    begin
        case(Secme)
        4'b0000: // Addition
           ALU_Result = AC + Sayi ; 
        4'b0001: // Subtraction
           ALU_Result = AC - Sayi ;
        4'b0010: // Multiplication
           ALU_Result = AC * Sayi;
        4'b0011: // Division
           ALU_Result = AC/Sayi;
        4'b0100: // Logical shift left
           ALU_Result = AC<<1;
         4'b0101: // Logical shift right
           ALU_Result = AC>>1;
         4'b0110: // Rotate left
           ALU_Result = {AC[6:0],AC[7]};
         4'b0111: // Rotate right
           ALU_Result = {AC[0],AC[7:1]};
          4'b1000: //  Logical and 
           ALU_Result = AC & Sayi;
          4'b1001: //  Logical or
           ALU_Result = AC | Sayi;
          4'b1010: //  Logical xor 
           ALU_Result = AC ^ Sayi;
          4'b1011: //  Logical nor
           ALU_Result = ~(AC | Sayi);
          4'b1100: // Logical nand 
           ALU_Result = ~(AC & Sayi);
          4'b1101: // Logical xnor
           ALU_Result = ~(AC ^ Sayi);
          4'b1110: // Greater comparison
           ALU_Result = (AC>Sayi)?8'd1:8'd0 ;
          4'b1111: // Equal comparison   
            ALU_Result = (AC==Sayi)?8'd1:8'd0 ;
          default: ALU_Result = AC + Sayi ; 
        endcase
    end

endmodule