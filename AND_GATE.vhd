library ieee;
use ieee.std_logic_1164.all;
    
entity AND_GATE is
port
(
A:in bit;
B:in bit;
C:out bit
);
end AND_GATE;

architecture dataflow of AND_GATE is
begin
C<= A AND B;
end dataflow;
