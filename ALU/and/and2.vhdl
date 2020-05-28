library IEEE;
use IEEE.std_logic_1164.all;

entity AND2 is
    port(
        a, b : in std_logic;
        c    : out std_logic
    );
end AND2;

architecture BEHAVE of AND2 is
begin
    c <= a and b;
end BEHAVE;