library ieee;
use ieee.std_logic_1164.all;
    
entity NOR_GATE is
port
(
A:in bit;
B:in bit;
C:out bit
);
end NOR_GATE;

architecture dataflow of NOR_GATE is
begin
C<= A NOR B;
end dataflow;
