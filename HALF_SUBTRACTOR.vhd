Library ieee;
use ieee.std_logic_1164.all;
  
entity half_subtractor is
   port(a,c:in bit; d,b:out bit);
end half_subtractor;  

architecture data of half_subtractor is
begin
   d<= a xor c;
   b<= (a and (not c));
end data;
