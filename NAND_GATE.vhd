library ieee;
use ieee.std_logic_1164.all;
    
entity NAND_GATE is
port
(
A:in bit;
B:in bit;
C:out bit
);
end NAND_GATE;

architecture dataflow of NAND_GATE is
begin
C<=A NAND B;
end dataflow;