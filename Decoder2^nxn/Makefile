GHDL=ghdl
FLAGS="--std=08"


all:
	@$(GHDL) -a $(FLAGS) decoder2^nxn.vhd decoder2^nxn_tb.vhd
	@$(GHDL) -e $(FLAGS) tb_decoder
	@$(GHDL) -r $(FLAGS) tb_decoder --wave=wave.ghw --stop-time=2000ns