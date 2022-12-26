library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity checker is
    generic (
        size: integer := 8
    );
     port(
        parity: in std_logic;
        input: in std_logic_vector(size - 1 downto 0);
        error_even: out std_logic;
        error_odd: out std_logic
     );
end checker;
 
architecture behavior of checker is
begin
    process(input,parity)
        variable temp: std_logic;  
    begin
        temp := '0';
        for i in 0 to input'length - 1 loop
            temp := temp xor input(i);
        end loop;

        error_even <= temp xor parity;
        error_odd <= not (temp xor parity);
    end process;
end behavior;

