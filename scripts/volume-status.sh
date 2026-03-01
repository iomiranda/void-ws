#!/bin/sh
# Script to show volume in dwmblocks

# Get volume status
volume=$(pactl list sinks | grep 'Volume:' | head -n 1 | awk '{print $5}')

# Get mute status
mute=$(pactl list sinks | grep 'Mute:' | head -n 1 | awk '{print $2}')

if [ "$mute" = "yes" ]; then
    echo "󰝟 muted"
else
    echo "󰕾 $volume"
fi
