library IEEE;
use IEEE.std_logic_1164.all;

entity cell is
    port(
        a, b, cin   : in std_logic;
        sel         : in std_logic_vector(2 downto 0);
        s, cout     : out std_logic
    );
end cell;

architecture behave of cell is
    component AND2 is
        port(
            a, b : in std_logic;
            c    : out std_logic
        );
    end component;

    component OR2 is
        port(
            a, b: in std_logic;
            c   : out std_logic
        );
    end component;

    component XOR2 is
        port(
            a, b: in std_logic;
            c   : out std_logic
        );
    end component;

    component NOT2 is
        port(
            a   : in std_logic;
            c   : out std_logic
        );
    end component;

    component FA is 
        port(
            a, b, cin : in std_logic;
            cout, s   : out std_logic
        );
    end component;

    component FS is 
        port(
            a, b, cin : in std_logic;
            cout, s   : out std_logic
        );
    end component;

    component MUX8TO1 is
        port(
            a    : in std_logic_vector(7 downto 0);
            sel  : in std_logic_vector(2 downto 0);
            c    : out std_logic
        );
    end component;
    
    signal S1, S2, S3, S4, S5, S6, S7 : std_logic;
    signal O1, O2 : std_logic;
    
    begin
        G1 : AND2 port map(a, b, S1);
        G2 : OR2  port map(a, b, S2);
        G3 : XOR2 port map(a, b, S3);
        G4 : NOT2 port map(a, S4);
        G5 : NOT2 port map(b, S5);
        G6 : FA   port map(a, b, cin, O1, S6);
        G6 : FS   port map(a, b, cin, O2, S7);

end behave;