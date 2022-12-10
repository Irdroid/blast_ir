#!/bin/bash

################################################################################
# Help                                                                         #
################################################################################
Help()
{
   # Display Help
      echo
      echo "Blast Pronto HEX code using Irdroino PRONTO IR Blaster."
      echo "-------------------------------------------------------"
      echo
      echo "Syntax: blast [PRONTO HEX CODE]"
      echo "Options:"
      echo "h     Print this Help."
      echo "V     Print software version and exit."
      echo
      echo "Get PRONTO hex codes from https://remotecentral.com"
}

Version()
{
	echo "Irdroino PRONTO IR Blaster"
	echo "---------------------------"
	echo "Version 1.0"
}

################################################################################

###############################################################################
# Main program                                                                 #
################################################################################
################################################################################

 #if [ -z "$*" ]; 
# 	then 
 #	Help
#	exit 0  
# fi

#while getopts ":h|:v" option; do
#   case $option in
#         h) # display Help#
#		Help
#         exit;;
#         v) # print version
#         	Version
#         exit;;
#   esac
#done

pronto="SEND "

for i in "$*"; 
do
    pronto+=$i
    pronto+=" "
done

$pronto = $pronto"\n"

stty -F /dev/ttyUSB0 115200 -parity cs8 -cstopb
tail -f /dev/ttyUSB0 &

echo -e $pronto > /dev/ttyUSB0

exit 0
