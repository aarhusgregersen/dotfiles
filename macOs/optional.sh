#!/usr/bin/env bash

################################################
# Optional / Experimental                      #
################################################

#setting up the computer label & name
read -p "What is this machine's label (Example: Paul's MacBook Pro ) ? " mac_os_label
if [[ -z "$mac_os_label" ]]; then
  echo "ERROR: Invalid MacOS label."
  exit 1
fi

read -p "What is this machine's name (Example: paul-macbook-pro ) ? " mac_os_name
if [[ -z "$mac_os_name" ]]; then
  echo "ERROR: Invalid MacOS name."
  exit 1
fi

echo "Setting system Label and Name..."
sudo scutil --set ComputerName "$mac_os_label"
sudo scutil --set HostName "$mac_os_name"
sudo scutil --set LocalHostName "$mac_os_name"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$mac_os_name"

running "Disable Resume system-wide"
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false;ok
# ! might want to enable this again and set specific apps that this works great for
# e.g. defaults write com.microsoft.word NSQuitAlwaysKeepsWindows -bool true

running "Stop iTunes from responding to the keyboard media keys"
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null;ok

running "Show icons for hard drives, servers, and removable media on the desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
# defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
# defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true;ok

# running "Enable the MacBook Air SuperDrive on any Mac"
# sudo nvram boot-args="mbasd=1";ok


###############################################################################
# Calendar                                                                    #
###############################################################################

# Show week numbers (10.8 only)
defaults write com.apple.iCal "Show Week Numbers" -bool true

# Week starts on monday
defaults write com.apple.iCal "first day of week" -int 1
