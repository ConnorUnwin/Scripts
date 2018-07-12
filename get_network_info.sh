wired=$(ipconfig getifaddr en0)
wireless=$(ipconfig getifaddr en1)
router=$(ipconfig getoption en0 router)

echo "----------NETWORK INFO---------"

if [ -z "$ethernet" ]
then
	echo "Ethernet: No IP Address Assigned"
else
	echo "Wired: $wired"
fi
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

