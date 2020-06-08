library IEEE;
use IEEE.std_logic_1164.all;

entity MUX2TO1 is
    port(
        a, b : in std_logic;
        sel  : in std_logic;
        c    : out std_logic
    );
end MUX2TO1;

architecture BEHAVE of MUX2TO1 is
begin
    c <= a when (sel = '1') else b;
end BEHAVE;