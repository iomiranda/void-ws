#!/bin/bash
# dmenu script to exit i3
# replaces the default i3 logout message
#

choice=$(echo -e "yes\nno" | dmenu -i -p "exit i3 ? " -fn "JetBrainsMonoNL Nerd Font-12" -nb "#CCCCCC" -nf "#101010" -sb "#101010" -sf "#CCCCCC")

case $choice in
	yes) i3-msg exit ;;
	no) pkill dmenu ;;
	*) exit 1	;;
esac
