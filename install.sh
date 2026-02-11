#!/bin/bash
# Script to install the usual packages in my personal workstations.
# OS: Void Linux
# Prerequisites: run void-installer, update xbps, install git, git clone main repo
# *NOTE: Install the necessary firmware depending on device hardware
# Credit to tony-btw. His YouTube channel helped with learning and utilizing Void Linux.
#-----------------------------------------------------------------
#                    BASE INSTALLATIONS & CONFIGS
#-----------------------------------------------------------------
# Install packages to get basic functions working
echo 'Starting base installations and configs...'

# Packages to be installed:
sudo xbps-install -yu base-devel

# Install display server, allow it to start
sudo xbps-install -Syu xorg xinit

# Install wm and basic applications
sudo xbps-install -Sy i3 i3status alacritty firefox dmenu neovim

# Configure xinitrc
# Add execute i3wm with startx
echo 'exec i3' >> .xinitrc

echo 'Base installations and configs finished...'
#-----------------------------------------------------------------
#               	    +ADDITIONAL INSTALLS
#-----------------------------------------------------------------
# Install file manager
sudo xbps-install -Sy fff

# Install image viewer and background image setter
sudo xbps-install -Sy feh

# Install starship, make terminal prompts nicer
sudo xbps-install -Sy starship

# Install iwd, use iwctl
# This allows for connection to 5Ghz wifi
# Before running, remove wpa_supplicant service
sudo xbps-install -Sy iwd

# Install media player
# Needed for firefox
sudo xbps-install -Sy ffmpeg

# Install Pulse Audio
# Make sure dbus is installed
sudo xbps-install -Sy pulseaudio

# Install UDisks2


#-----------------------------------------------------------------
#               	    +ADDITIONAL CONFIGS
#-----------------------------------------------------------------
# Copy from repo/configs directory, Paste to local destination



