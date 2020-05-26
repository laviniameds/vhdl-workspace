-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity fa is
    port(
        a	: in std_logic;
        b	: in std_logic;
        cin	: in std_logic;
        cout: out std_logic;
        s	: out std_logic
    );
end fa;

architecture behave of fa is
begin
    s <= (a xor b) xor cin;
    cout <= (a and b) or (b and cin) or (a and cin);    
end behave;