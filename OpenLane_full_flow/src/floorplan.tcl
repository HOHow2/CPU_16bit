# Copyright 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# PL_TARGET_DENSITY default value set in all.tcl because of the order of sourcing.




####################################################################################################
###### Floorplan
# Initial
set ::env(FP_SIZING) relative
set ::env(FP_CORE_UTIL) 50
set ::env(FP_ASPECT_RATIO) 1
set ::env(DIE_AREA) "0 0 300 300"
set ::env(CORE_AREA) "11 11 279 279"



# PDN generation
set ::env(FP_PDN_SKIPTRIM) 0

set ::env(FP_PDN_AUTO_ADJUST) 1

set ::env(FP_PDN_AUTO_ADJUST) "1"
set ::env(FP_PDN_MULTILAYER) "1"
set ::env(FP_PDN_CORE_RING) 0
set ::env(FP_PDN_CORE_RING_VWIDTH) 2
set ::env(FP_PDN_CORE_RING_HWIDTH) 2
set ::env(FP_PDN_CORE_RING_VSPACING) "2"
set ::env(FP_PDN_CORE_RING_HSPACING) "2"

set ::env(FP_PDN_ENABLE_RAILS) 1

set ::env(FP_PDN_CHECK_NODES) 1
set ::env(FP_PDN_IRDROP) 1


set ::env(FP_PDN_ENABLE_GLOBAL_CONNECTIONS) "1"
set ::env(FP_PDN_ENABLE_MACROS_GRID) "1"



# IO placement
set ::env(FP_IO_MODE) 0; # 0 matching mode - 1 random equidistant mode
set ::env(FP_IO_HLENGTH) 4
set ::env(FP_IO_VLENGTH) 4
set ::env(FP_IO_VEXTEND) 0
set ::env(FP_IO_HEXTEND) 0
set ::env(FP_IO_VTHICKNESS_MULT) 2
set ::env(FP_IO_HTHICKNESS_MULT) 2
set ::env(FP_IO_MIN_DISTANCE) 3
set ::env(FP_IO_UNMATCHED_ERROR) 1

set ::env(BOTTOM_MARGIN_MULT) 4
set ::env(TOP_MARGIN_MULT) 4
set ::env(LEFT_MARGIN_MULT) 12
set ::env(RIGHT_MARGIN_MULT) 12

set ::env(FP_TAP_HORIZONTAL_HALO) 10
set ::env(FP_TAP_VERTICAL_HALO) $::env(FP_TAP_HORIZONTAL_HALO)
set ::env(FP_PDN_ENABLE_GLOBAL_CONNECTIONS) 1
set ::env(FP_PDN_ENABLE_MACROS_GRID) 1





