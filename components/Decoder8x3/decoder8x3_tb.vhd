LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_decoder IS
END tb_decoder;
 
ARCHITECTURE behavior OF tb_decoder IS
 
 COMPONENT decoder
 PORT(
    a : in STD_LOGIC_VECTOR(2 downto 0);
    b : out STD_LOGIC_VECTOR(7 downto 0)
 );
 END COMPONENT;
 signal a : std_logic_vector(2 downto 0) := (others => '0');
 signal b : std_logic_vector(7 downto 0);
 
BEGIN
 uut: decoder PORT MAP (
 a => a,
 b => b
 );
 process
 begin
 a <= "000";
 wait for 100 ns;
 
 a <= "001";
 wait for 100 ns;
 
 a <= "010";
 wait for 100 ns;
 
 a <= "011";
 wait for 100 ns;

 a <= "100";
 wait for 100 ns;

 a <= "101";
 wait for 100 ns;

 a <= "110";
 wait for 100 ns;

 a <= "111";
 wait for 100 ns;
 
 wait;
 end process;
 
END;
