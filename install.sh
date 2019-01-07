#!/bin/bash

if [ "$(id -u)" -eq 0 ] ; then
	echo "ERROR: Don't run the installer.sh as root or via sudo."
	echo "       Simply invoke it with your regular user."
	exit 1
fi

cd "$(dirname "$0")"
cd data
export LD_LIBRARY_PATH="$(pwd):$LD_LIBRARY_PATH"
./xDroidInstall
