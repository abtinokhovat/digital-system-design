library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder is
Generic
(
    size: integer := 2
    isHigh: bit := 0
);
 port(
 input : in std_logic_vector(size-1 downto 0);
 output : out std_logic_vector((2**size)-1 downto 0)
 );
end decoder;
 
architecture behavior of decoder is
begin
process(input)
    begin
        if isHigh = '1' then
            output <= (others => '0');
            output(to_integer(unsigned(input))) <= '1';
        else
            output <= (others => '1');
            output(to_integer(unsigned(input))) <= '0';
        end if;
    end process;
end behavior;

