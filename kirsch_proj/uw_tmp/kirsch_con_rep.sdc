###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default mem_0 -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default mem_1 -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default mem/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance mem/mem -design rtl 

set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default mem_0/mem_0 -design rtl 
set_attribute -name ram_processed -value "true" -instance mem_0/mem_0 -design rtl 

set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default mem_1/mem_1 -design rtl 
set_attribute -name ram_processed -value "true" -instance mem_1/mem_1 -design rtl 



##################
# Clocks
##################
