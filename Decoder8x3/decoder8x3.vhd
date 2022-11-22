library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity decoder is
 port(
 a : in STD_LOGIC_VECTOR(2 downto 0);
 b : out STD_LOGIC_VECTOR(7 downto 0)
 );
end decoder;
 
architecture behavior of decoder is
begin
process(a)
begin
case a is
when "000" => b <= "00000001";
when "001" => b <= "00000010";
when "010" => b <= "00000100";
when "011" => b <= "00001000";
when "100" => b <= "00010000";
when "101" => b <= "00100000";
when "110" => b <= "01000000";
when "111" => b <= "10000000";
when others => b <= "00000000";
end case;
end process;
end behavior;

