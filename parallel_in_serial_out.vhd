library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity parallel_in_serial_out is
     port(
         clk : in STD_LOGIC;
         reset : in STD_LOGIC;
         load : in STD_LOGIC;
         din : in STD_LOGIC_VECTOR(3 downto 0);
         dout : out STD_LOGIC
         );
end parallel_in_serial_out;


architecture piso_arc of parallel_in_serial_out is
begin

    piso : process (clk,reset,load,din) is
    variable temp : std_logic_vector (din'range);
    begin
        if (reset='1') then
            temp := (others=>'0');
        elsif (load='1') then
            temp := din ;
        elsif (rising_edge (clk)) then
            dout <= temp(3);
            temp := temp(2 downto 0) & '0';
        end if;
    end process piso;

end piso_arc;
