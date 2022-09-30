#!/bin/bash
# Script: deviceTemps.sh
# Purpose: Display the ARM CPU and GPU  temperature of Raspberry Pi 0/1/2/3/4
# Author: Timothy Forbes <www.forbes.org.za> under GPL v2.x+
# -------------------------------------------------------

_thermals() 
{
	cpu=$(</sys/class/thermal/thermal_zone0/temp)
	echo -e "$(date) @ $(hostname)\n" "-------------------------------------------\n" "GPU => $(/opt/vc/bin/vcgencmd measure_temp)\n" "CPU => $((cpu/1000))'C\n"

}