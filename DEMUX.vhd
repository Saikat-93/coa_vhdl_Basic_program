Library ieee; 
use ieee.std_logic_1164.all;
  
entity demux is
   port(S1,S0,D:in bit; Y0,Y1,Y2,Y3:out bit); 
end demux;
  
architecture data of demux is
begin 
   Y0<=  ((Not S0) and (Not S1) and D); 
   Y1<=  ((Not S0) and S1 and D); 
   Y2<=  (S0 and (Not S1) and D); 
   Y3<=  (S0 and S1 and D); 
   end data;
