#!/bin/bash
# A simple geolocation script

main() {
    IP="$1"
    COUNTRY=$(curl -s http://api.db-ip.com/v2/free/$IP/countryName)
    echo "$IP: $COUNTRY"
}
if [ -z "$1" ]; then
    echo "Missing argument: IP address."
    exit 1
else
    main "$1"
fi
