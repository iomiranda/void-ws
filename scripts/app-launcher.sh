# Shell script launcher for .desktop files
#

app=$( sed $HOME/.local/share/applications/*.desktop |  grep -h "^Name=" | cut -d'=' -f2 | sort -u |  dmenu -i -l 5 -p "power menu > " -fn "JetBrainsMonoNL Nerd Font-12")

if [ -n "$app" ]; then
	# Find the Exec line for the selected app name
       
       	exec_cmd=$(grep -l "^Name=$app" $HOME/.local/share/applications/*.desktop | xargs grep "Exec=" | head -1 | cut -d'=' -f2 | sed 's/%.//g')
       
       	setsid -f $exec_cmd >/dev/null 2>&1
fi

