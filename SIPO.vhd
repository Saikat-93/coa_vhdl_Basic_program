library ieee;
use ieee.std_logic_1164.all;
entity sipo is
port( res: in std_logic;
sin: in std_logic;
clk: in std_logic;
pout: out std_logic_vector(3 downto 0));
end sipo;

architecture beh of sipo is
signal temp: std_logic_vector( 3 downto 0);
begin
process( clk, res)
begin
if(res='1') then
temp<="0000";
elsif (clk'event and clk ='1') then
temp(3)<=sin;
temp(2)<=temp(3);
temp(1)<=temp(2);
temp(0)<=temp(1);
end if;
end process;
pout<=temp;
end beh;
