library ieee;
use ieee.std_logic_1164.all;

entity tb_checker is
end entity;

architecture behavioral of tb_checker is
    generic();
    component checker is
    end component checker;
    
    begin
        uut: checker port map();
    end;
end behavioral;

