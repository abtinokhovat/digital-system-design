library ieee;
use ieee.std_logic_1164.all;

entity tb_checker is
end entity;

architecture behavior of tb_checker is
    component checker is
        generic (
            size: integer := 8
        );
        port(
            parity: in std_logic;
            input: in std_logic_vector(size - 1 downto 0);
            error_even: out std_logic;
            error_odd: out std_logic
        );
    end component checker;

    -- signals here
    signal input: std_logic_vector(7 downto 0);
    signal parity: std_logic;
    
    signal error_even: std_logic;
    signal error_odd: std_logic;
    
begin
    uut: checker port map(
        parity => parity,
        input => input,
        error_even => error_even,
        error_odd => error_odd
    );
    process
    begin
        -- exhaustive test
        -- for i in 0 to (2 ** input'length) / 40 loop
        --     input <= std_logic_vector(to_unsigned(i * 40, input'length));       

        --     parity <= '0';
        --     wait for 10 ns;

        --     parity <= '1';
        --     wait for 10 ns;
        -- end loop ;  

        input <= "01001101";
        parity <= '1';       
        wait for 10 ns;

        input <= "00010011";
        parity <= '1';       
        wait for 10 ns;

        input <= "11011101";
        parity <= '1';       
        wait for 10 ns;

        input <= "01111101";
        parity <= '0';       
        wait for 10 ns;

        input <= "01010100";
        parity <= '1';       
        wait for 10 ns;

        input <= "10101110";
        parity <= '0';       
        wait for 10 ns;

        input <= "11001010";
        parity <= '1';       
        wait for 10 ns;
    wait;
    end process;
end behavior;







