-- half_adder.vhd

library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity COUNTER is
	Port ( clk        :      in std_logic                       ;
           reset      :      in std_logic                       ;    
           counter    :      out std_logic_vector(11 downto 0)
    );

end COUNTER;

architecture Behavioral of COUNTER is
signal counter_signal: std_logic_vector(11 downto 0)            ;
begin
process(clk)
begin
if(rising_edge(clk)) then
    if(reset='1') then
	    counter_signal <= "000000000000"                        ;
    else
        counter_signal <= counter_signal + x"1"                 ;
	end if;
  end if;
end process;
counter <= counter_signal;

end Behavioral;
