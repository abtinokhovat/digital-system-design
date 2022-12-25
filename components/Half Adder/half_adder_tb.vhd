library ieee;

use ieee.std_logic_1164.all;

entity half_adder_tb is
end entity;

architecture Behavioural of half_adder_tb is

    constant c_WAIT : time := 20 ns;

    signal r_input_a : std_logic := '0';
    signal r_input_b : std_logic := '0';

    signal r_output_s : std_logic := '0';
    signal r_output_c : std_logic := '0';

    component half_adder is
        port(
        A : in std_logic;
        B : in std_logic;
        S : out std_logic;
        C : out std_logic
        );

    end component half_adder;

    begin
        UUT : half_adder
        port map (
        A => r_input_a,
        B => r_input_b,
        S => r_output_s,
        C => r_output_c
        );

        p_comb : process is
            begin
                wait for c_WAIT;
                r_input_a <= '0';
                r_input_b <= '0';

                wait for c_WAIT;
                r_input_a <= '0';
                r_input_b <= '1';

                wait for c_WAIT;
                r_input_a <= '1';
                r_input_b <= '0';

                wait for c_WAIT;
                r_input_a <= '1';
                r_input_b <= '1';

            end process;

end Behavioural;