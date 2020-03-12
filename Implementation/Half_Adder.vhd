library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity half_adder is
  port (
    i_bit1  : in std_logic;
    i_bit2  : in std_logic;
    o_sum   : out std_logic;
    o_carry : out std_logic
    );
end half_adder;
 
architecture rtl of half_adder is
begin
  o_sum   <= i_bit1 xor i_bit2;
  o_carry <= i_bit1 and i_bit2;
end rtl;