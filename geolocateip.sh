#!/bin/bash
# A simple geolocation script

if [ -z $1 ]; then
	echo "Missing argument: IP address."
else
	IP=$1
	curl http://api.db-ip.com/v2/free/$IP
fi
