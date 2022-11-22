library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package array_pkg is
    type bus_array is array(natural range <>) of std_logic_vector;
end package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.array_pkg.all;

entity mux is
port(
    input: in bus_array(3 downto 0)(7 downto 0);
    s: in std_logic_vector(1 downto 0);
    output: out std_logic_vector(7 downto 0)
);
end mux;

architecture arch of mux is
begin
    process(input,s)
    begin
        case s is
            when "00" => output <= input(0);
            when "01" => output <= input(1);
            when "10" => output <= input(2);
            when "11" => output <= input(3);
            when others => output <= std_logic_vector(to_unsigned(0,8));
        end case;
    end process;
end arch;