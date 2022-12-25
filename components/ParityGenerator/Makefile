GHDL=ghdl
FLAGS="--std=08"


all:
	@$(GHDL) -a $(FLAGS) ParityGenerator.vhd ParityGenerator_tb.vhd
	@$(GHDL) -e $(FLAGS) tb_generator
	@$(GHDL) -r $(FLAGS) tb_generator --wave=wave.ghw --stop-time=1000ns