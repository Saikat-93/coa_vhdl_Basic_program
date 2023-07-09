library ieee;
use ieee.std_logic_1164.all;
    
entity XOR_GATE is
port
(
A:in bit;
B:in bit;
C:out bit
);
end XOR_GATE;

architecture dataflow of XOR_GATE is
begin
C<=A XOR B;
end dataflow;