#!/usr/bin/env bash

# include my library helpers for colorized echo and require_brew, etc
source ./lib_sh/echoes.sh
source ./lib_sh/requires.sh

###############################################################################
bot "Configuring General System UI/UX..."
###############################################################################
# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
running "closing any system preferences to prevent issues with automated changes"
osascript -e 'tell application "System Preferences" to quit'
ok

##############################################################################
# Security                                                                   #
##############################################################################
source .macOs/security.sh

###############################################################################
# SSD-specific tweaks                                                         #
###############################################################################
source .macOs/ssd.sh

################################################
# Optional / Experimental                      #
################################################
source .macOs/optional.sh

################################################
bot "Standard System Changes"
################################################
source .macOs/standard_system.sh

###############################################################################
bot "Trackpad, mouse, keyboard, Bluetooth accessories, and input"
###############################################################################
source .macOs/input.sh

###############################################################################
bot "Configuring the Screen"
###############################################################################
source .macOs/screen.sh

###############################################################################
bot "Finder Configs"
###############################################################################
source .macOs/finder.sh

###############################################################################
bot "Dock & Dashboard"
###############################################################################
source .macOs/dock_settings.sh

# Insert shortcut applications and reset dock
source .macOs/dock_layout.sh

###############################################################################
bot "Configuring Safari & WebKit"
###############################################################################
source .macOs/safari_webkit.sh

###############################################################################
bot "Configuring Mail"
###############################################################################
source .macOs/mail.sh

###############################################################################
bot "Spotlight"
###############################################################################
source .macOs/spotlight.sh

###############################################################################
bot "Terminal & iTerm2"
###############################################################################
source .macOs/terminal_iterm.sh

###############################################################################
bot "Time Machine"
###############################################################################

running "Prevent Time Machine from prompting to use new hard drives as backup volume"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true;ok

# running "Disable local Time Machine backups"
# hash tmutil &> /dev/null && sudo tmutil disablelocal;ok

###############################################################################
bot "Activity Monitor"
###############################################################################
source .macOs/activity_monitor.sh

###############################################################################
bot "Address Book, Dashboard, iCal, TextEdit, and Disk Utility"
###############################################################################
source .macOs/various.sh

###############################################################################
bot "Mac App Store"
###############################################################################
source .macOs/app_store.sh

###############################################################################
bot "Messages"
###############################################################################
source .macOs/messages.sh

###############################################################################
# Kill affected applications                                                  #
###############################################################################
bot "OK. Note that some of these changes require a logout/restart to take effect. Killing affected applications (so they can reboot)...."
for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
  "Dock" "Finder" "Mail" "Messages" "Safari" "SizeUp" "SystemUIServer" \
  "iCal" "Terminal"; do
  killall "${app}" > /dev/null 2>&1
done
