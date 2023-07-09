Library ieee; 
use ieee.std_logic_1164.all;
  
entity mux is
   port(S1,S0,D0,D1,D2,D3:in bit; Y:out bit);
end mux;
  
architecture data of mux is
begin 
   Y<= (not S0 and not S1 and D0) or 
      (S0 and not S1 and D1) or 
      (not S0 and S1 and D2) or
      (S0 and S1 and D3); 
end data;
