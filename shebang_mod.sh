#!/bin/bash

##### This script is called from Makefile
##### This script changes the shebang for codeharbour script before installing

if /usr/local/bin/bash --version 2>/dev/null 1>/dev/null; then
    sed -e "1s/.*/#!\/usr\/local\/bin\/bash/" codeharbour > codeharbour_bak
    mv -- codeharbour_bak codeharbour
    chmod u+x codeharbour
fi
