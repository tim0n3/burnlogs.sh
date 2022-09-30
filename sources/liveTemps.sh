#!/bin/bash
# Script: liveTemps.sh
# Purpose: Display the live ARM CPU and GPU  temperature of Raspberry Pi 0/1/2/3/4
# Author: Timothy Forbes <www.forbes.org.za> under GPL v2.x+
# -------------------------------------------------------
source ./deviceTemps.sh
_watch()
{
	watch -n 1 $thermals
}