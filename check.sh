#!/bin/bash

URL="http://localhost:$1"

while true; do
    response_code=$(curl -s -o /dev/null -w "%{http_code}" "$URL")
    
    if [ "$response_code" -eq 200 ]; then
        echo "200 OK - 종료"
        break
    else
        echo "$response_code FAIL - 재시도"
    fi

    sleep 5
done