library ieee;
use ieee.std_logic_1164.all;

entity paritygen is
   port (a0, a1, a2, a3: in std_logic; p_odd, p_even: out std_logic);
end paritygen;  

architecture vcgandhi of paritygen is
begin
   process (a0, a1, a2, a3)
   
   if (a0 ='0' and a1 ='0' and a2 ='0' and a3 =?0?)
      then odd_out <= "0";
      even_out <= "0";
   else
      p_odd <= (((a0 xor a1) xor a2) xor a3);
      p_even <= not(((a0 xor a1) xor a2) xor a3);  
end vcgandhi;
