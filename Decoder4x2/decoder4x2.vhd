library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity decoder is
 port(
 a : in STD_LOGIC_VECTOR(1 downto 0);
 b : out STD_LOGIC_VECTOR(3 downto 0)
 );
end decoder;
 
architecture behavior of decoder is
begin
process(a)
begin
case a is
when "00" => b <= "0001";
when "01" => b <= "0010";
when "10" => b <= "0100";
when "11" => b <= "1000";
when others => b <= "0000";
end case;
end process;
end behavior;

