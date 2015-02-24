#!/bin/bash
#
# Created by Igor Pecovnik, www.igorpecovnik.com
#
# Configuration 
#--------------------------------------------------------------------------------------------------------------------------------

BOARD="cubietruck"				    	# cubieboard, cubieboard2, cubietruck
BRANCH="default"				    	# default=3.4.x, mainline=next
RELEASE="trusty"                                   	# jessie, wheezy (Debian) or trusty (Ubuntu)

# numbers
SDSIZE="1200"                               			# SD image size in MB
REVISION="3.3"                          			# image release version

# method
SOURCE_COMPILE="yes"             				# force source compilation: yes / no
KERNEL_CONFIGURE="no"           				# want to change my default configuration
KERNEL_CLEAN="yes"						# run MAKE clean before kernel compilation
USEALLCORES="yes"                           			# Use all CPU cores for compiling

# user 
DEST_LANG="es_MX.UTF-8"                     			# sl_SI.UTF-8, en_US.UTF-8
TZDATA="America/Chihuahua"               			# Timezone
ROOTPWD="1234"                              			# Must be changed @first login
MAINTAINER="dssmex"                  				# deb signature
MAINTAINERMAIL="dssmex@live.com.mx"	    			# deb signature

# advanced
FBTFT="no"                                 			# https://github.com/notro/fbtft 
EXTERNAL="no"                           			# compile extra drivers`

#--------------------------------------------------------------------------------------------------------------------------------

# source is where we start the script
SRC=$(pwd)

# destination
DEST=$(pwd)/output

# get updates of the main build libraries
if [ -d "$SRC/lib" ]; then
    cd $SRC/lib
    git pull 
else
    # download SDK
    git clone https://github.com/dssmex/lib
fi

source $SRC/lib/main.sh
#--------------------------------------------------------------------------------------------------------------------------------
