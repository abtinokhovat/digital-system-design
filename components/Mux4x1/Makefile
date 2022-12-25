GHDL=ghdl
FLAGS="--std=08"


all:
	@$(GHDL) -a $(FLAGS) mux4x1.vhd mux4x1_tb.vhd
	@$(GHDL) -e $(FLAGS) tb_mux
	@$(GHDL) -r $(FLAGS) tb_mux --wave=wave.ghw --stop-time=1000000ns