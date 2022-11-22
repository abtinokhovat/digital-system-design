library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.array_pkg.all;

entity tb_mux is
end tb_mux;

architecture bhv of tb_mux is
    component mux 
    -- change N and M
    generic(
        N : integer := 1;
        M : integer := 5
    );

    port(
        input: in bus_array(2 ** N - 1 downto 0)(M - 1 downto 0);
        s: in std_logic_vector(N - 1 downto 0);
        output: out std_logic_vector(M - 1 downto 0)
    );
    end component mux;

    -- change N and M
    constant N : integer := 1;
    constant M : integer := 5;

    signal input: bus_array(2 ** N - 1 downto 0)(M - 1 downto 0) := ("10000","01010");
    signal s: std_logic_vector(N - 1 downto 0);
    signal output: std_logic_vector(M - 1 downto 0);
    

begin
    uut: mux port map(
        input => input,
        s => s,
        output => output
    );
    process
    begin
        for i in 0 to 2 ** N - 1 loop
            s <= std_logic_vector(to_unsigned(i,N));
            wait for 1 ns;
        end loop;
        wait;
    end process;
end bhv;   