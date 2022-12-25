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
    input: in bus_array(7 downto 0)(3 downto 0);
    s: in std_logic_vector(2 downto 0);
    output: out std_logic_vector(3 downto 0)
);
end mux;

architecture arch of mux is
begin
    process(input,s)
    begin
        output <= input(to_integer(unsigned(s)));
    end process;
end arch;
