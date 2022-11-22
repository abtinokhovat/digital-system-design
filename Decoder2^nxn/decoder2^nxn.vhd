library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity decoder is
Generic
(
    size: integer := 2
);
 port(
 input : in STD_LOGIC_VECTOR(size-1 downto 0);
 output : out STD_LOGIC_VECTOR((2**size)-1 downto 0)
 );
end decoder;
 
architecture behavior of decoder is
begin
process(input)
    begin
        output <= (others => '0');
        output(to_integer(unsigned(input))) <= '1';
    end process;
end behavior;

