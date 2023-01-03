library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder is
 port(
 a : in std_logic_vector(1 downto 0);
 b : out std_logic_vector(3 downto 0)
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

