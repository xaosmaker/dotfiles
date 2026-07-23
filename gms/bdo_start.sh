#!/bin/sh
#first
DXVK_CONFIG_FILE=/home/xaosmaker/.config/gms/dxvk.conf taskset -ac 0,2,4,6 gamemoderun mesa_glthread=true MANGOHUD=1 %command%
#work well heat problem
DXVK_CONFIG_FILE=/home/xaosmaker/.config/gms/dxvk.conf  mangohud gamemoderun %command%
#work well i use this
@work wiht this
DXVK_CONFIG_FILE=/home/xaosmaker/.config/gms/dxvk.conf taskset -ac 0,2,4,6 mangohud gamemoderun %command%

