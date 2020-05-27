library IEEE;
use IEEE.std_logic_1164.all;

entity or is
    port(
        a, b: in std_logic;
        c   : out std_logic
    );
end or;

architecture behave of or is
begin
    c <= a or b;
end behave;