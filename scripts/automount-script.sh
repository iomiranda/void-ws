#!/bin/bash
# Script to install packages for automounting usb drives to void-ws.
# This will only allow automount, but will need to manually remove drive from station.

echo "Starting script..."

# Do I need udevil, polkit?
echo "Installing udiskie, udisks2..."
sudo xbps-install -Sy udiskie udisks2 udevil polkit

# Make sure polkit service has been enabled
sudo ln -s /etc/sv/polkitd /var/service/

# Make sure user is in storage group
sudo usermod -aG storage $USER

# Echo commands, depending on machine
echo "Adding packages to execute to .bashrc"
echo "udiskie --automount &" >> ~/.bashrc
echo "devmon &" >> ~/.bashrc

# Remove dunst & in .xinitrc



