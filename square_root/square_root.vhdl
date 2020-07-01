LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY square_root IS
    PORT (
	x : in std_logic_vector(7 downto 0);
	clk : in std_logic;
	clk4 : in std_logic;
	r : out std_logic_vector(7 downto 0)
    );
END square_root;

ARCHITECTURE structure OF square_root IS
	component MUX2TO1 is
    	port(
        	a, b : in std_logic_vector(7 downto 0);
        	sel  : in std_logic;
        	c    : out std_logic_vector(7 downto 0)
    	);
	end component;

	component FA8 is
    	port(
      	 	a, b : in std_logic_vector(7 downto 0);
       	 	s    : out std_logic_vector(7 downto 0)
    	);
	end component;

	component REG8 is
    	port(
		data_in: in std_logic_vector(7 downto 0); 
		clk: in std_logic;
		data_out: out std_logic_vector(7 downto 0)
    	);
	end component;

	component COMPARATOR8 is
    	port(
        	a, b : in std_logic_vector(7 downto 0);
        	s_equal, s_less, s_greater : out std_logic
    	);
	end component;

	-- output reg
    	SIGNAL s_regr, s_regd, s_regs : std_logic_vector(7 downto 0);
	-- output mux
	SIGNAL s_muxr, s_muxd, s_muxs : std_logic_vector(7 downto 0);
	-- output comp 
	SIGNAL s_comp_equal, s_comp_less, s_comp_greater : std_logic;
	--output add
	SIGNAL s_addr1, s_addd2, s_addd1, s_addsd1 : std_logic_vector(7 downto 0);
	-- constants
	constant const1 : std_logic_vector(7 downto 0) := "00000001";
	constant const2 : std_logic_vector(7 downto 0) := "00000010";
	constant const4 : std_logic_vector(7 downto 0) := "00000100";
	
BEGIN
	MUX_R : MUX2TO1 PORT MAP(s_addr1, const1, clk, s_muxr); --mux to reg r
	MUX_D : MUX2TO1 PORT MAP(s_addd2, const2, clk, s_muxd); --mux to reg d
	MUX_S : MUX2TO1 PORT MAP(s_addsd1, const4, clk4, s_muxs); --mux to reg s

	REG_R : REG8 PORT MAP(s_muxr, clk, s_regr); --reg r
	REG_D : REG8 PORT MAP(s_muxd, clk, s_regd); --reg d
	REG_S : REG8 PORT MAP(s_muxs, clk, s_regs); --reg s

	ADD_R1 : FA8 PORT MAP(s_regr, const1, s_addr1); --add r+1
	ADD_D2 : FA8 PORT MAP(s_regd, const2, s_addd2); --add d+2
	ADD_D1 : FA8 PORT MAP(s_addd2, const1, s_addd1); --add d+1
	ADD_SD1 : FA8 PORT MAP(s_regs, s_addd1, s_addsd1); --add s+d+1

	-- comparator (s > x)
	COMP : COMPARATOR8 PORT MAP(x, s_regs, s_comp_equal, s_comp_less, s_comp_greater);  	
	
	r <= s_regr;
END structure;
