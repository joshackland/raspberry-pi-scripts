#!/bin/bash

DRIVE=sda1
MOUNT_DIRECTORY=/home/pi/drive

if $(echo lsblk) | grep -q "$MOUNT_DIRECTORY" ;then
	echo Drive already mounted at $MOUNT_DIRECTORY
elif $(echo lsblk) | grep -q "$DRIVE" ;then
	echo "$DRIVE Exists!"
	mount /dev/sda1 /home/pi/drive
	echo "$DRIVE successfully mounted!"
else
	echo "$DRIVE does not exist :("
fi
