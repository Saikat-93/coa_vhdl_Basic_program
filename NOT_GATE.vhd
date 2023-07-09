library ieee;
use ieee.std_logic_1164.all;
    
entity NOT_GATE is
port
(
A:in bit;
B:OUT bit
);
end NOT_GATE;

architecture dataflow of NOT_GATE is
begin
B<=(NOT A);
end dataflow;