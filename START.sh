#!/bin/bash
sudo ./nextjtag -a -m  -B --set-voltage=0.64 --disable-voltage-limit  
sudo ./teamredminer -a kas -o stratum+tcp://pool.woolypooly.com:3112 -u kaspa:qzhfmet4u7geehex58s8lz4yxxcjujzem9fzjqgfusc08q9mdmze625y655kq.kuchyn -p x --fpga_tmem_limit=80 --fpga_clk_core=550 --fpga_tcore_limit=70 --hardware=fpga
