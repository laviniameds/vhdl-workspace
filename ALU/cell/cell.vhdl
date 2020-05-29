LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY cell IS
    PORT (
        a, b, cin : IN std_logic;
        sel : IN std_logic_vector(2 DOWNTO 0);
        s, cout : OUT std_logic
    );
END cell;

ARCHITECTURE behave OF cell IS
    COMPONENT AND2 IS
        PORT (
            a, b : IN std_logic;
            c : OUT std_logic
        );
    END COMPONENT;

    COMPONENT OR2 IS
        PORT (
            a, b : IN std_logic;
            c : OUT std_logic
        );
    END COMPONENT;

    COMPONENT XOR2 IS
        PORT (
            a, b : IN std_logic;
            c : OUT std_logic
        );
    END COMPONENT;

    COMPONENT NOT2 IS
        PORT (
            a : IN std_logic;
            c : OUT std_logic
        );
    END COMPONENT;

    COMPONENT FA2 IS
        PORT (
            a, b, cin : IN std_logic;
            cout, s : OUT std_logic
        );
    END COMPONENT;

    COMPONENT FS2 IS
        PORT (
            a, b, cin : IN std_logic;
            cout, s : OUT std_logic
        );
    END COMPONENT;

    COMPONENT MUX2TO1 IS
        PORT (
            a, b : IN std_logic;
            sel : IN std_logic;
            c : OUT std_logic
        );
    END COMPONENT;

    COMPONENT MUX8TO1 IS
        PORT (
            a : IN std_logic_vector(7 DOWNTO 0);
            sel : IN std_logic_vector(2 DOWNTO 0);
            c : OUT std_logic
        );
    END COMPONENT;

    SIGNAL S1, S2, S3, S4, S5, S6, S7 : std_logic;
    SIGNAL O1, O2 : std_logic;

BEGIN
    G1 : AND2 PORT MAP(a, b, S1);
    G2 : OR2 PORT MAP(a, b, S2);
    G3 : XOR2 PORT MAP(a, b, S3);
    G4 : NOT2 PORT MAP(a, S4);
    G5 : NOT2 PORT MAP(b, S5);
    G6 : FA2 PORT MAP(a, b, cin, O1, S6);
    G7 : FS2 PORT MAP(a, b, cin, O2, S7)


END behave;