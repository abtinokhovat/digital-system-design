library ieee;
use ieee.std_logic_1164.all;

entity generator is
generic (
    size: integer := 8
);
 port(
    input: in std_logic_vector(size - 1 downto 0);
    output_even: out std_logic;
    output_odd: out std_logic
 );
end generator;
 
architecture behavior of generator is    
begin
    process(input)
        variable temp: std_logic;  
    begin
        temp := '0';
        for i in 0 to input'length - 1 loop
            temp := temp xor input(i);
        end loop;
        output_even <= temp;
        output_odd <= not temp;
    end process;
    
end behavior;

