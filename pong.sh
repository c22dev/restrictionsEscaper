#!/bin/bash

while true; do
    ping_result=$(curl -s 127.0.0.1:8080)
    if [[ $ping_result == *"Failed to connect"* ]]; then
        existing_pid=$(pgrep -f "$HOME/.restrEscape/traffic.sh")
        if [ -n "$existing_pid" ]; then
            kill "$existing_pid"
        fi
        "$HOME/.restrEscape/traffic.sh" &
    fi
    sleep 10
done
