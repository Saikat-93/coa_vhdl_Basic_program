library ieee;
use ieee. std_logic_1164.all;
entity T_CLK is
PORT
( 
T,CLOCK: in std_logic;
Q,QBAR: out std_logic
);
end T_CLK;
 
architecture bhv of T_CLK is
begin
process(T,CLOCK)
variable tmp:std_logic;
begin
if(CLOCK='1' and CLOCK'EVENT) then
    tmp:='1';
if(T='0') then
tmp:=tmp;
else
tmp:=not tmp;
end if;
end if;
Q<= tmp;
QBAR<= not tmp;
end process;
end bhv;