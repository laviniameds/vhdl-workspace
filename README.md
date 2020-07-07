# square_root

## Simulações

### Reg 8

```
PROCESS BEGIN

        data_in_signal <= "00000000";
        clk_signal <= '0';
	      enable_signal <= '1';
        WAIT FOR 1 ns;

        data_in_signal <= "00000011";
        clk_signal <= '0';
        WAIT FOR 1 ns;

        clk_signal <= '1';
        WAIT FOR 1 ns;

        data_in_signal <= "00100000";
        clk_signal <= '0';
        WAIT FOR 1 ns;

        clk_signal <= '1';
        WAIT FOR 1 ns;

        clk_signal <= '0';
        WAIT FOR 1 ns;

        WAIT;

END PROCESS;    
```

![reg8](https://github.com/laviniameds/vhdl-workspace/blob/master/square_root/visual/simulacoes_modelsim/reg8.png "REG 8")
