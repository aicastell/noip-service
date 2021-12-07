#!/bin/bash

export PATH=$PATH:/usr/local/bin

# Create configuration file
noip2 -C -u ${USER} -p ${PASSWORD} -U ${UPDATE_INTERVAL}

# Run binary
noip2

# While main loop
while pgrep noip2
do
    echo "Process is running"
    sleep 60
done

echo "No-ip has died"
exit 1
