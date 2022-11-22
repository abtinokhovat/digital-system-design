library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.array_pkg.all;

entity tb_mux is
end tb_mux;

architecture bhv of tb_mux is
    component mux port(
        input: in bus_array(7 downto 0)(3 downto 0);
        s: in std_logic_vector(2 downto 0);
        output: out std_logic_vector(3 downto 0)
    );
    end component mux;

    signal input: bus_array(7 downto 0)(3 downto 0) := ("0010","0100","0110","1000","1010","1100","1110","1111");
    signal s: std_logic_vector(2 downto 0);
    signal output: std_logic_vector(3 downto 0);
    

begin
    uut: mux port map(
        input => input,
        s => s,
        output => output
    );
    process
    begin
        for i in 0 to 7 loop
            s <= std_logic_vector(to_unsigned(i,3));
            wait for 1 ns;
        end loop;
        wait;
    end process;
end bhv;   