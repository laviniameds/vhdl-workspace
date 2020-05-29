library IEEE;
use IEEE.std_logic_1164.all;

entity FS is
    port(
        a, b, cin : in std_logic;
        cout, s   : out std_logic
    );
end FS;

architecture BEHAVE of FS is
begin
    s <= (a xor b) xor cin;
    cout <= (not a and b) or (b and cin) or (not a and cin);    
end BEHAVE;