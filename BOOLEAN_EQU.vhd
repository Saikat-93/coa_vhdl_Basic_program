library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity BOOLEAN_EQU is
port ( a,b,c : in std_logic;
y: out std_logic
);
end BOOLEAN_EQU;
architecture BOOL_EQU_ARCH of BOOLEAN_EQU is
begin
y <= a or (not(b) and c) or (not(a) and c) or (not(c) and b);
end BOOL_EQU_ARCH;