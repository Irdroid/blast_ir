#!/bin/bash

#####################################################################################
# Reads PRONTO HEX code from a csv file - codes.csv, parses the command name 	     #
# and PRONTO hex code into variable and executes the command provided as a command   #
# line argument. 								     #
# The Pronto HEX codes and commands can be added in the codes.csv in the following   #
# format command_name,pronto_hex_code . one command/pronto code per line in this file#
#										     #
# The codes.csv that comes with this program, contains PRONTO HEX codes for Samsung  #
######################################################################################

################################################################################
# Prints a Help/Usage                                                          #
################################################################################
Execute()
{
stty -F /dev/ttyUSB0 115200 -parity cs8 -cstopb
tail -f /dev/ttyUSB0 &

echo -e $pronto > /dev/ttyUSB0
}


Help()
{
   # Display Help
      echo
      echo "Blast Pronto HEX code using Irdroino PRONTO IR Blaster."
      echo "-------------------------------------------------------"
      echo "Commands and codes are store in a csv file - codes.csv."
      echo "In the following format command_name,Pronto HEX code.  "
      echo
      echo "Syntax: blast_cmd [Command]"
      echo "Options:"
      echo "l	  List available commands"
      echo "h     Print this Help."
      echo "V     Print software version and exit."
      echo
      echo "Get more PRONTO hex codes from https://remotecentral.com"
}

# Prints script version

Version()
{
	echo "Irdroino PRONTO IR Blaster"
	echo "---------------------------"
	echo "Version 1.0"
}

# Prints list of available commands/PRONTO codes

List()
{
	echo "Available commands:"
	echo "-------------------"
	INPUT=codes.csv
	OLDIFS=$IFS
	IFS=','

	[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

	while read command code
	do
	        echo $command
	done < $INPUT
	IFS=$OLDIFS
	exit 0                                                                

}

################################################################################
# Main program                                                                 #
################################################################################

if [ -z "$*" ]; 
 	then 
 	Help
	exit 0  
fi

while getopts ":h|:v|:lo" option; do
   case $option in
         h) # display Help#
		Help
         exit;;
         v) # print version
         	Version
         exit;;
         l) # List abailable remote commands
	 	List
	 exit;;
   esac	
done

INPUT=codes.csv
OLDIFS=$IFS
IFS=','

[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

while read command code
do
	if [ "$1" = "$command" ]; then
	    echo "Executing command-"$command"..."
	    pronto="SEND "
	    pronto+=$code
	    Execute	    
	fi
done < $INPUT
IFS=$OLDIFS

exit 0
