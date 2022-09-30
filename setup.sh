#!/bin/bash

# initialize all source_functions                                 
for src in ./sources/*;
  do source $src
done

# debug check for sources import
for files in ./sources/*;
    do echo -e "Importing functions from: \n";ls -lsaFh --color=auto $files
done


############################################################
############################################################
# Main program                                             #
############################################################
############################################################

_box()
{
    # Get the options ;; run the functions
while getopts ":h|man|help|t|temps|l|logs|purge" option; do
   case $option in
      h|man|help) # display Help
         _help
         exit 0;;
      t|temps) # display device temps
         _watch _thermals
         exit 0;;
      l|logs|purge) # purge logs in /var/log/*
        _purge
        exit 0;;
      *) # catchall print version and help
        _version
        _help
        exit 0;;
   esac
done

}
source ./bashbox;
_box;
exit 0;