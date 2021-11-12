-- counter_tb-vhd

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counters is
end tb_counters;

architecture Behavioral of tb_counters is


component COUNTER
	Port ( clk: in std_logic                                         ; 
           reset: in std_logic                                       ;  
           counter: out std_logic_vector(11 downto 0) 
     );
end component;
signal reset,clk: std_logic;
signal counter1: std_logic_vector(11 downto 0);


begin
dut: COUNTER port map (clk => clk, reset => reset, counter => counter1);

 -- CLOCK PROCESS 
clock_process : process
begin
	clk <= '0';
	wait for 10 ns;
	clk <= '1';
	wait for 10 ns;
end process;

--- STIMULUS PROCESS
stim_proc: process
begin
	--- hold reset for 100 ns.
	reset <= '1';
	wait for 20 ns;
	reset <= '0';
	wait;
end process;
end Behavioral;



