GHDL=ghdl
FLAGS="--std=08"


all:
	@$(GHDL) -a $(FLAGS) mux2^nx1.vhd mux2^nx1_tb.vhd
	@$(GHDL) -e $(FLAGS) tb_mux
	@$(GHDL) -r $(FLAGS) tb_mux --wave=wave.ghw --stop-time=1000ns