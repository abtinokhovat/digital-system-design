library ieee;
use ieee.std_logic_1164.all;

entity tb_generator is
end entity;

architecture behavior of tb_generator is
    component generator is
        generic (
            size: integer := 8
        );
        port(
            input: in std_logic_vector(size - 1 downto 0);
            output_even: out std_logic;
            output_odd: out std_logic
        );
    end component generator;

    signal input: std_logic_vector(7 downto 0);
    signal output_even: std_logic;
    signal output_odd: std_logic;

begin
    uut: generator port map(
        input => input,
        output_even => output_even,
        output_odd => output_odd
    );
    process
    begin
        input <= "01001101";       
        wait for 10 ns;

        input <= "00010011";       
        wait for 10 ns;

        input <= "11011111";       
        wait for 10 ns;

        input <= "01111101";       
        wait for 10 ns;

        input <= "01010100";       
        wait for 10 ns;

        input <= "10101110";       
        wait for 10 ns;

        input <= "11001010";       
        wait for 10 ns;
    wait;
    end process;
end behavior;

