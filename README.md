This project is deployed according to the ASIC design flow using opensource tools:
ICarus, Gtkwave, Yosys, OpenSTA, OpenROAD OpenLane, Magic, Klayout

ASIC design flow:
RTL design -> RTL verification -> Synthesis -> STA -> floorplan -> Placement -> CTS -> Routing -> Signoff

All necessary files related to the front-end of ASIC design are all in the Workplace folder.
The back-end design is done manually in the dir: Results/PD_design

The folder OpenLane_full_flow has completed the full ASIC flow entirely using the open-source tool OpenLane.

Reference:

https://github.com/the-openroad-project

https://github.com/The-OpenROAD-Project/OpenLane.
