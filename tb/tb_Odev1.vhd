library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Odev1 is
end entity;

architecture sim of tb_Odev1 is

	signal Cnt : unsigned(2 downto 0) := "000";
	signal No : unsigned(3 downto 0);
	
begin  
	Dec1 : entity work.Dec_No(rtl)
	port map(
		Cnt => Cnt,
		No => No);
	
	process is
	begin
		wait for 10ns;
		Cnt <= Cnt + 1;
	end process;
		
end architecture;

