#!/bin/sh
case $1 in
	suspend|hibernate)  
		/home/ji4ka/hdmi_1.sh
		/bin/sleep 1
	;;
	restore|resume|thaw)
		/bin/sleep 2
    		/home/ji4ka/hdmi_2.sh
    	;;
esac
