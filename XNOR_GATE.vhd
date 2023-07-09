library ieee;
use ieee.std_logic_1164.all;
    
entity XNOR_GATE is
port
(
A:in bit;
B:in bit;
C:out bit
);
end XNOR_GATE;

architecture dataflow of XNOR_GATE is
begin
C<= A XNOR B;
end dataflow;

