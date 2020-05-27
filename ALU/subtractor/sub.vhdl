library IEEE;
use IEEE.std_logic_1164.all;

entity sub is
    port(
        a	: in std_logic;
        b	: in std_logic;
        cin	: in std_logic;
        cout: out std_logic;
        s	: out std_logic
    );
end sub;

architecture behave of sub is
begin
    s <= (a xor b) xor cin;
    cout <= (not a and b) or (b and cin) or (not a and cin);    
end behave;