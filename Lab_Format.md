## Students must follow following template for each and every questions on their lab assessment file.

### Circuit Definition
....... a Line or two ............
> Example: A combinational circuit that add two bits. Output will be sum and carry bits.

### Hardware Implementation
....... Combinational/Sequential Circuit ............
> Example: Half adder logic diagram

### Function Table / Truth Table
....... A table that explains the circuit behaviour ............
> Example: Half adder truth table with two inputs (a and b) and two output bits (S and C). 

### Verilog Design Code
....... Code that implements the circuit behaviour ............
```
// Code your design here
module half_adder 
  (
   i_bit1,
   i_bit2,
   o_sum,
   o_carry
   );
 
  input  i_bit1;
  input  i_bit2;
  output o_sum;
  output o_carry;
 
  assign o_sum   = i_bit1 ^ i_bit2;  // bitwise xor
  assign o_carry = i_bit1 & i_bit2;  // bitwise and
 
endmodule // half_adder
```

### Verilog Test Bench
.......Code that tests the circuit behaviour ............
```
// Code your testbench here
// or browse Examples
module half_adder_tb;
 
  reg r_BIT1 = 0;
  reg r_BIT2 = 0;
  wire w_SUM;
  wire w_CARRY;
   
  half_adder half_adder_inst
    (
     .i_bit1(r_BIT1),
     .i_bit2(r_BIT2),
     .o_sum(w_SUM),
     .o_carry(w_CARRY)
     );
 
  initial    
    begin
      $monitor(" A=%b B=%b Sum=%b Cout=%b", r_BIT1,r_BIT2,w_SUM,w_CARRY);
      r_BIT1 = 1'b0;
      r_BIT2 = 1'b0;
      #10;
      r_BIT1 = 1'b0;
      r_BIT2 = 1'b1;
      #10;
      r_BIT1 = 1'b1;
      r_BIT2 = 1'b0;
      #10;
      r_BIT1 = 1'b1;
      r_BIT2 = 1'b1;
      #10;
    end 
 
endmodule // half_adder_t
```

### Output
.......EDAPlayground output snapshots ............
> Example: Output snapshot from edaplayground editor
