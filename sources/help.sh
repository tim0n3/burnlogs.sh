#!/bin/bash

############################################################
# Help                                                     #
############################################################
_help()
{
   # Display Help
   echo "Here are the valid options for this script."
   echo
   echo "Syntax: ./script [-g|h|v|V]"
   echo "options:"
   echo "t     Run device temps script."
   echo "h     Print this Help."
   echo "l     Purge all System logs in /var/logs/."
   echo "V     Print software version and exit."
   echo .
}