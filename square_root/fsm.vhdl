USE ieee.std_logic_1164.all;

ENTITY fsm_sq IS
	PORT (clk, t: IN STD_LOGIC; 
			o : OUT STD_LOGIC );
END fsm_sq;

ARCHITECTURE behavior OF fsm_sq IS
type tipo_estado is (esperar, calcular_raiz);
signal estado_atual, proximo_estado : tipo_estado;

--COMPONENT square_root IS
--    PORT (
--	x : in std_logic_vector(7 downto 0);
--	clk, enable : in std_logic;
--	sel : in std_logic; 
--	r: out std_logic_vector(7 downto 0)
--    );
--END COMPONENT;

begin

SYNC_PROC : process (clk)
begin
	if rising_edge(clk) then
			estado_atual <= proximo_estado;
	end if;
end process;
	
NEXT_STATE_DECODE : process (estado_atual, t)
begin
	t <= '1';
		case (estado_atual) is
			when esperar =>
				if (t = '1') then
					proximo_estado <= calcular_raiz;
				else
					proximo_estado <= esperar;
				end if;
			when calcular_raiz =>
				if (t != '1') then
					proximo_estado <= esperar;
					/*TODO: acoplar circuito de calcular raiz*/
				else
					proximo_estado <= calcular_raiz;
				end if;
end process; 