library IEEE;
use IEEE.std_logic_1164.all;

entity MUX8TO1 is
    port(
        a0, a1, a2, a3, a4, a5, a6, a7 : in std_logic;
        sel  : in std_logic_vector(2 downto 0);
        c    : out std_logic
    );
end MUX8TO1;

architecture BEHAVE of MUX8TO1 is
begin
    with sel select
        c <= a0 when "000",
             a1 when "001",
             a2 when "010",
             a3 when "011",
             a4 when "100",
             a5 when "101",
             a6 when "110",
             a7 when "111",
             '0'  when others;             
end BEHAVE;