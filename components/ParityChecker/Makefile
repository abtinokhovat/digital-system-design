GHDL=ghdl
FLAGS="--std=08"


all:
	@$(GHDL) -a $(FLAGS) ParityChecker.vhd ParityChecker_tb.vhd
	@$(GHDL) -e $(FLAGS) tb_checker
	@$(GHDL) -r $(FLAGS) tb_checker --wave=wave.ghw --stop-time=1000ns