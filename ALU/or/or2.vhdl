library IEEE;
use IEEE.std_logic_1164.all;

entity OR2 is
    port(
        a, b: in std_logic;
        c   : out std_logic
    );
end OR2;

architecture BEHAVE of OR2 is
begin
    c <= a or b;
end BEHAVE;