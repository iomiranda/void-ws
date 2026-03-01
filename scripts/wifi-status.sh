#!/bin/bash
# Script to show wifi connectivity

status=$(cat /sys/class/net/wlo1/operstate 2>/dev/null)

if [ "$status" = "up" ]; then
    echo "󰖩"
else
    echo "󰖪"
fi
