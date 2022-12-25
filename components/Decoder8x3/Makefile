GHDL=ghdl
FLAGS="--std=08"


all:
	@$(GHDL) -a $(FLAGS) decoder8x3.vhd decoder8x3_tb.vhd
	@$(GHDL) -e $(FLAGS) tb_decoder
	@$(GHDL) -r $(FLAGS) tb_decoder --wave=wave.ghw --stop-time=1000ns