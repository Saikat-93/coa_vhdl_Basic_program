library ieee; 
use ieee.std_logic_1164.all;

entity dec is
   port(i0,i1,i2:in bit; o0,o1,o2,o3,o4,o5,o6,o7: out bit); 
end dec; 
 
architecture bhv of dec is
begin 
   o0<=(not i0) and (not i1) and (not i2); 
   o1<=(not i0) and (not i1) and i2; 
   o2<=(not i0) and i1 and (not i2); 
   o3<=(not i0) and i1 and i2; 
   o4<=i0 and (not i1) and (not i2); 
   o5<=i0 and (not i1) and i2; 
   o6<=i0 and i1 and (not i2); 
   o7<=i0 and i1 and i2; 
end bhv;
