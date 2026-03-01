#!/bin/bash

choice=$(echo -e "kill\nshutdown\nreboot\nzzz\nlogout\ncancel" | dmenu -i -l 5 -p "power menu > " -fn "JetBrainsMonoNL Nerd Font-12")

case $choice in
    kill) ps -u "$USER" -o pid,comm,%cpu,%mem | dmenu -i -l 10 -p kill: -fn "JetBrainsMonoNL Nerd Font-12" | awk '{print $1}' | xargs -r kill ;;
    shutdown)sudo poweroff ;;
    reboot)sudo reboot ;;
    zzz)sudo zzz	;;
    logout) pkill x ;;
    cancel) pkill dmenu ;;
    *) exit 1 ;;
esac

