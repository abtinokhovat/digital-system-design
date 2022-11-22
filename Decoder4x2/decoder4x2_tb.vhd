LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_decoder IS
END tb_decoder;
 
ARCHITECTURE behavior OF tb_decoder IS
 
 COMPONENT decoder
 PORT(
 a : IN std_logic_vector(1 downto 0);
 b : OUT std_logic_vector(3 downto 0)
 );
 END COMPONENT;
 
 signal a : std_logic_vector(1 downto 0) := (others => '0');
 signal b : std_logic_vector(3 downto 0);
 
BEGIN
 uut: decoder PORT MAP (
 a => a,
 b => b
 );
 process
 begin
 a <= "00";
 wait for 100 ns;
 
 a <= "01";
 wait for 100 ns;
 
 a <= "10";
 wait for 100 ns;
 
 a <= "11";
 wait for 100 ns;
 
 wait;
 end process;
 
END;
