#!/bin/bash
DNAS=$(sudo ./teamredminer --list_devices 2>&1 | egrep 40020000 | awk '{print $7}' | xargs | sed 's/ /,/g')
str="DNA LIST:"
echo $str
echo $DNAS
sudo ./teamredminer -a ethash -o stratum+tcp://eu1.ethermine.org:4444 -u 0xc9A8875272dD3fE110238d640E0765ff1Ec8C69c.BNX21 -p x --fpga_clk_core=612 --fpga_clk_mem=1224 --fpga_tmem_limit=70  --hardware=fpga --fpga_allow_unsafe=$DNAS