Library ieee; 
use ieee.std_logic_1164.all;
  
  entity full_sub is
   port(a,b,c:in bit; sub,borrow:out bit); 
end full_sub; 
 
architecture data of full_sub is
begin
   sub<= a xor b xor c; 
   borrow <= ((b xor c) and (not a)) or (b and c); 
end data;
