#!/bin/bash
# Script: deviceTemps.sh
# Purpose: Display the ARM CPU and GPU  temperature of Raspberry Pi 0/1/2/3/4
# Author: Timothy Forbes <www.forbes.org.za> under GPL v2.x+
# -------------------------------------------------------
cpu=$(</sys/class/thermal/thermal_zone0/temp)
echo "$(date) @ $(hostname)"
echo "-------------------------------------------"
echo "GPU => $(/opt/vc/bin/vcgencmd measure_temp)"
echo "CPU => $((cpu/1000))'C"

