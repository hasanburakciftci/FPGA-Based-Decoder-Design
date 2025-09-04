library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Dec_No is
port(
	Cnt : in Unsigned(2 downto 0);
	No  : out Unsigned(3 downto 0));

end entity;


architecture rtl of Dec_No is

begin
	process(Cnt) is
	begin
		
		case Cnt is
			when "000" =>
				No <= "0010";
			when "001" =>
				No <= "0000";
			when "010" =>
				No <= "0010";
			when "011" =>
				No <= "0100";
			when "100" =>
				No <= "0111";
			when "101" =>
				No <= "0000";
			when "110" =>
				No <= "0010";
			when "111" =>
				No <= "0000";
			when others =>
				No <= (others=>'0');
		end case;
	
	end process;

end architecture;
