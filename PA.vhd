library IEEE; 
use IEEE.STD_LOGIC_1164.all;
  
entity pa is
   port(a : in STD_LOGIC_VECTOR(3 downto 0);
      b : in STD_LOGIC_VECTOR(3 downto 0);
      ca : out STD_LOGIC;
      sum : out STD_LOGIC_VECTOR(3 downto 0) 
   ); 
end pa; 
 
architecture bhv of pa is
   Component fa is
      port (a : in STD_LOGIC; 
         b : in STD_LOGIC; 
         c : in STD_LOGIC; 
         sum : out STD_LOGIC; 
         ca : out STD_LOGIC
      ); 
   end component;         
   signal s : std_logic_vector (2 downto 0); 
   signal temp: std_logic;
begin 
   temp<='0'; 
   u0 : fa port map (a(0),b(0),temp,sum(0),s(0)); 
   u1 : fa port map (a(1),b(1),s(0),sum(1),s(1)); 
   u2 : fa port map (a(2),b(2),s(1),sum(2),s(2));
   ue : fa port map (a(3),b(3),s(2),sum(3),ca);  
end bhv;
