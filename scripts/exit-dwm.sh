#!/bin/bash
# dmenu script to exit i3
# replaces the default i3 logout message
#

choice=$(echo -e "yes\nno" | dmenu -i -l 2  -p "exit dwm ? ")

case $choice in
	yes) pkill x ;;
	no) pkill dmenu ;;
	*) exit 1	;;
esac
