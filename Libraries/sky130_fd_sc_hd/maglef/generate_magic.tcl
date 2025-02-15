#!/usr/bin/env wish
#--------------------------------------------
# Script to generate .mag files from .lef    
#--------------------------------------------
tech unlock *
lef datestamp 1738263620
lef read /home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef
lef read /home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_ef_sc_hd.lef
puts stdout "Annotating cells from CDL/SPICE"
catch {readspice /home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/cdl/sky130_fd_sc_hd.cdl}
load sky130_fd_sc_hd__a2bb2o_1
writeall force
puts stdout "Done."
quit -noprompt
