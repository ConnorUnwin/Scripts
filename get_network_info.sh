#!/bin/bash

# Variables
wired=$(ipconfig getifaddr en0)
wireless=$(ipconfig getifaddr en1)
router=$(ipconfig getoption en1 router)

echo "----------NETWORK INFO---------"

# Check if there is a wired connection
if [ -z "$wired" ]
then
	echo "Ethernet: No IP Address Assigned"
else
	echo "Wired: $wired"
fi

# Check if there is a wireless connection
if [ -z "$wireless" ]
then
	echo "Wireless: No IP Address Assigned"
else
	echo "Wireless: $wireless"
fi

if [ -z "$router" ]
then
	echo "No connection to router"
else
	echo "Router: $router"
fi
echo "------------------------------"

