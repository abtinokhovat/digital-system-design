library ieee;
use ieee.std_logic_1164.all;

entity tb_generator is
end entity;

architecture behavioral of tb_generator is
    generic();
    component generator is
    end component generator;
    
    begin
        uut: generator port map();
    end;
end behavioral;

