#!/bin/bash

choice=$(echo -e "kill\nshutdown\nreboot\nzzz\nlogout\ncancel" | dmenu -i -p "system ctrl > " -fn "JetBrainsMonoNL Nerd Font-12" -nb "#CCCCCC" -nf "#101010" -sb "#101010" -sf "#CCCCCC")

case $choice in
    kill) ps -u "$USER" -o pid,comm,%cpu,%mem | dmenu -i -l 10 -p kill: -fn "JetBrainsMonoNL Nerd Font-12" -nb "#CCCCCC" -nf "#101010" -sb "#101010" -sf "#CCCCCC" | awk '{print $1}' | xargs -r kill ;;
    shutdown)sudo poweroff ;;
    reboot)sudo reboot ;;
    zzz)sudo zzz	;;
    logout) i3-msg exit ;;
    cancel) pkill dmenu ;;
    *) exit 1 ;;
esac

