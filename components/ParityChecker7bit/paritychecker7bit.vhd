library ieee;

use ieee.std_logic_1164;
use ieee.numeric_std;

entity checker is
    port (
        parity: in std_logic;
        input: in std_logic_vector(6 to 0);
        error: out std_logic
    );
end checker;

architecture behavior of checker is
begin
    process(input)
    begin
        error <= '0';
        error <= error xor input(0);
        error <= error xor input(1);
        error <= error xor input(2);
        error <= error xor input(3);
        error <= error xor input(4);
        error <= error xor input(5);
        error <= error xor input(6);
        error <= error xor parity;
    end process;
end behavior;

