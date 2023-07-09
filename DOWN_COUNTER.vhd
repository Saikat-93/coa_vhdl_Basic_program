library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- FPGA projects using Verilog code VHDL code
-- fpga4student.com: FPGA projects, Verilog projects, VHDL projects
-- VHDL project: VHDL code for counters with testbench  
-- VHDL project: VHDL code for down counter   
entity DOWN_COUNTER is
    Port ( clk: in std_logic; -- clock input
           reset: in std_logic; -- reset input 
           counter: out std_logic_vector(3 downto 0) -- output 4-bit counter
     );
end DOWN_COUNTER;

architecture Behavioral of DOWN_COUNTER is
signal counter_down: std_logic_vector(3 downto 0);
begin
-- down counter
process(clk)
begin
if(rising_edge(clk)) then
    if(reset='1') then
         counter_down <= x"F";
    else
        counter_down <= counter_down - x"1";
    end if;
 end if;
end process;
 counter <= counter_down;

end Behavioral;