library IEEE;
use IEEE.std_logic_1164.all;

entity MUX8TO1 is
    port(
        a    : in std_logic_vector(7 downto 0);
        sel  : in std_logic_vector(2 downto 0);
        c    : out std_logic
    );
end MUX8TO1;

architecture BEHAVE of MUX8TO1 is
begin
    with sel select
        c <= a(0) when "000",
             a(1) when "001",
             a(2) when "010",
             a(3) when "011",
             a(4) when "100",
             a(5) when "101",
             a(6) when "110",
             a(7) when "111",
             '0'  when others;             
end BEHAVE;