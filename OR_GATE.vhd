library ieee;
use ieee.std_logic_1164.all;
    
entity OR_GATE is
port
(
A:in bit;
B:in bit;
C:out bit
);
end OR_GATE;

architecture dataflow of OR_GATE is
begin
C<=A OR B;
end dataflow;