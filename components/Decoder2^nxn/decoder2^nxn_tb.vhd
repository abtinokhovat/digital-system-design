LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.all;
 
ENTITY tb_decoder IS
END tb_decoder;
 
ARCHITECTURE behavior OF tb_decoder IS
 
 COMPONENT decoder
 generic (
  size: integer := 4
 );
 PORT(
    input : in STD_LOGIC_VECTOR(size-1 downto 0);
    output : out STD_LOGIC_VECTOR((2**size)-1 downto 0)
 );
 END COMPONENT;
 
 signal input : std_logic_vector(3 downto 0) := (others => '0');
 signal output : std_logic_vector(15 downto 0);
 
BEGIN
 uut: decoder PORT MAP (
 input => input,
 output => output
 );
 process
 variable size : integer := 4;
 begin
    for i in 0 to (2**size)-1 loop
       input <= std_logic_vector(to_unsigned(i,size));
       wait for 10 ns;
    end loop;
 
 wait;
 end process;
 
END;
