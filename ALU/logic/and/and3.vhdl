library IEEE;
use IEEE.std_logic_1164.all;

entity AND3 is
    port(
        a, b, c : in std_logic;
        d       : out std_logic
    );
end AND3;

architecture BEHAVE of AND3 is
begin
    d <= a and (not b) and c;
end BEHAVE;