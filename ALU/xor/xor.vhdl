library IEEE;
use IEEE.std_logic_1164.all;

entity xor is
    port(
        a, b: in std_logic;
        c   : out std_logic
    );
end xor;

architecture behave of xor is
begin
    c <= a xor b;
end behave;