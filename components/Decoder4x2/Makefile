GHDL=ghdl
FLAGS="--std=08"


all:
	@$(GHDL) -a $(FLAGS) decoder4x2.vhd decoder4x2_tb.vhd
	@$(GHDL) -e $(FLAGS) tb_decoder
	@$(GHDL) -r $(FLAGS) tb_decoder --wave=wave.ghw --stop-time=500ns