#!/bin/bash

###########################################################################
#                                                                         #
#  install_digilent.sh -- Digilent Cable Drivers installation script      #
#                                                                         #
###########################################################################
#  Author: MTA                                                            #
#  Copyright 2014 Digilent Inc.                                           #
###########################################################################
#  File Description:                                                      #
#                                                                         #
#  This is a bash shell script that can be used to install Digilent's     #
#  Cable Drivers on a target system.                                      #
#                                                                         #
#  Exit Codes:                                                            #
#                                                                         #
#  If an error occurs during installation then a message will be sent to  #
#  stdout and the script will exit with a non-zero code indicating its    #
#  error status. Below is a list of error codes and their meaning.        #
#                                                                         #
#  0 - no error                                                           #
#  9 - failed to install a component                                      #
#                                                                         #
###########################################################################
#  Revision History:                                                      #
#                                                                         #
#  03/04/2014(MTA): created                                               #
#                                                                         #
###########################################################################

# Install UDEV Rules file when necessary.
if [ -f "/etc/udev/rules.d/52-xilinx-digilent-usb.rules" ]
then
	# No update.
	echo "USB udev file exists and will not be updated."
	exit 0
else
	cp -f 52-xilinx-digilent-usb.rules /etc/udev/rules.d/52-xilinx-digilent-usb.rules
	chmod 644 /etc/udev/rules.d/52-xilinx-digilent-usb.rules

	if [ $? = "0" ]
	then
		echo "Successfully installed Digilent Cable Drivers"
		exit 0
	else
		echo "error: one or more components failed to install"
		exit 9
	fi
fi


