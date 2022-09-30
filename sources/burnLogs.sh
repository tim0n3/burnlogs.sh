#!/bin/bash
purge() 
{
	for i in $(find /var/log -type f);
        do cat /dev/null > $i;
        echo $(date) "cleared" $i "logs" ;done
}