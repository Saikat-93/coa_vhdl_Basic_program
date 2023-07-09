library ieee; 
use ieee.std_logic_1164.all; 
 
entity parity_checker is 
   port (a0,a1,a2,a3 : in std_logic; 
      p : out std_logic); 
end parity_checker;  

architecture vcgandhi of parity_checker is 
begin    
   p <= (((a0 xor a1) xor a2) xor a3); 
end vcgandhi;
