#!/usr/bin/env wish
#---------------------------------------------
# Script to generate SPICE library from GDS   
#---------------------------------------------
drc off
locking off
gds readonly true
gds flatten true
gds rescale false
tech unlock *
cif istyle sky130()
gds read /home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_ef_sc_hd__decap_12.gds
gds read /home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_ef_sc_hd__decap_20_12.gds
gds read /home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_ef_sc_hd__decap_40_12.gds
gds read /home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_ef_sc_hd__decap_60_12.gds
gds read /home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_ef_sc_hd__decap_80_12.gds
gds read /home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_ef_sc_hd__fill_2.gds
gds read /home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_ef_sc_hd__fill_4.gds
gds read /home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_ef_sc_hd__fill_8.gds
gds read /home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_ef_sc_hd__fill_12.gds
lef read /home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_ef_sc_hd.lef
load /home/hong/Chip_design/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_ef_sc_hd__decap_12
catch {cellname delete \(UNNAMED\)}
ext2spice lvs
ext2spice subcircuit top on
set glist [cellname list top]
foreach cell $glist {
    load $cell
    puts stdout "Extracting cell $cell"
    extract all
    ext2spice
}
puts stdout "Done."
quit -noprompt
