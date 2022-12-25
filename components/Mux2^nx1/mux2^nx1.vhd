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
    generic(
        N : integer := 2;
        M : integer := 8
    );
port(
    input: in bus_array(2 ** N - 1 downto 0)(M - 1 downto 0);
    s: in std_logic_vector(N - 1 downto 0);
    output: out std_logic_vector(M - 1 downto 0)
);
end mux;

architecture arch of mux is
begin
    process(input,s)
    begin
        output <= input(to_integer(unsigned(s)));
    end process;
end arch;
