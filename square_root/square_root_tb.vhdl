-- Test Bench
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY square_root_tb IS
END square_root_tb;

ARCHITECTURE test OF square_root_tb IS
    COMPONENT square_root IS
    	port(
		x : in std_logic_vector(7 downto 0);
		clk, enable : in std_logic;
		sel : in std_logic;
		r: out std_logic_vector(7 downto 0)
	);	
    END COMPONENT;

    SIGNAL x_signal, r_signal : std_logic_vector(7 downto 0);
    SIGNAL clk_signal, sel_signal, enable_signal : std_logic;

BEGIN
    	sq : square_root PORT MAP(
        	-- connect ports to signals
        	x => x_signal,
		clk => clk_signal,
		enable => enable_signal,
		sel => sel_signal,
		r => r_signal
    );

    PROCESS
	BEGIN
		-- inicializa a entrada
		x_signal <= "00010000";

		-- inicializa tudo com zero 
		sel_signal <= '0';
		clk_signal <= '0';
		enable_signal <= '0';
        	WAIT FOR 1 ns;

		--clk zero
		--habilita seletor dos muxs
		--habilita escrita nos regs
		sel_signal <= '1';
		enable_signal <= '1';	
        	WAIT FOR 1 ns;

		--enable habilitado
		--regs recebem o primeiro valor
		clk_signal <= '1';	
        	WAIT FOR 1 ns;

		--desabilita seletor do mux
		sel_signal <= '0';
		clk_signal <= '0';	
        	WAIT FOR 1 ns;

		clk_signal <= '1';	
        	WAIT FOR 1 ns;

		clk_signal <= '0';	
        	WAIT FOR 1 ns;

		clk_signal <= '1';	
        	WAIT FOR 1 ns;

		clk_signal <= '0';	
        	WAIT FOR 1 ns;

		clk_signal <= '1';	
        	WAIT FOR 1 ns;

		clk_signal <= '0';	
        	WAIT FOR 1 ns;

		clk_signal <= '1';	
        	WAIT FOR 1 ns;

		clk_signal <= '0';	
        	WAIT FOR 1 ns;

		clk_signal <= '1';	
        	WAIT FOR 1 ns;
		
        	WAIT;

    END PROCESS;
END test;
