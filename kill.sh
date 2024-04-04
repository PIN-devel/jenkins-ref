#! /bin/bash

EXISTING_PROCESS=$(sudo lsof -t -i:$1)

if [ -n "$EXISTING_PROCESS" ]; then
    echo "Existing process found. Killing process $EXISTING_PROCESS."
    sudo kill -9 $EXISTING_PROCESS
else
    echo "No existing process found on port $1."
fi