#!/usr/bin/env bash

running "Set the dock on the left side of the screen"
defaults write com.apple.dock orientation left

running "Enable highlight hover effect for the grid view of a stack (Dock)"
defaults write com.apple.dock mouse-over-hilite-stack -bool true;ok

running "Set the icon size of Dock items to 38 pixels"
defaults write com.apple.dock tilesize -int 38;ok

running "Change minimize/maximize window effect to scale"
defaults write com.apple.dock mineffect -string "scale";ok

running "Minimize windows into their application’s icon"
defaults write com.apple.dock minimize-to-application -bool true;ok

running "Enable spring loading for all Dock items"
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true;ok

running "Show indicator lights for open applications in the Dock"
defaults write com.apple.dock show-process-indicators -bool true;ok

running "Don’t animate opening applications from the Dock"
defaults write com.apple.dock launchanim -bool false;ok

running "Speed up Mission Control animations"
defaults write com.apple.dock expose-animation-duration -float 0.1;ok

running "Don’t group windows by application in Mission Control"
# (i.e. use the old Exposé behavior instead)
defaults write com.apple.dock expose-group-by-app -bool false;ok


# Dashboard is disabled by default on macOS Mojave,
# Moreover as of macOS 10.15 Catalina, Dashboard is removed macOS.

# running "Disable Dashboard"
# defaults write com.apple.dashboard mcx-disabled -bool true;ok

# running "Don’t show Dashboard as a Space"
# defaults write com.apple.dock dashboard-in-overlay -bool true;ok

running "Don’t automatically rearrange Spaces based on most recent use"
defaults write com.apple.dock mru-spaces -bool false;ok

running "Remove the auto-hiding Dock delay"
defaults write com.apple.dock autohide-delay -float 0;ok
running "Remove the animation when hiding/showing the Dock"
defaults write com.apple.dock autohide-time-modifier -float 0;ok

running "Automatically hide and show the Dock"
defaults write com.apple.dock autohide -bool true;ok

running "Make Dock icons of hidden applications translucent"
defaults write com.apple.dock showhidden -bool true;ok

# No bouncing icons
# defaults write com.apple.dock no-bouncing -bool true

# Don't show recently used applications in the Dock
defaults write com.Apple.Dock show-recents -bool false

running "Make Dock more transparent"
defaults write com.apple.dock hide-mirror -bool true;ok

# defaults write com.apple.dock ResetLaunchPad -bool TRUE
running "Reset Launchpad, but keep the desktop wallpaper intact"
find "${HOME}/Library/Application Support/Dock" -name "*-*.db" -maxdepth 1 -delete;ok

# You can change the layout of your Launchpad
# Use the following command in Terminal to change the layout of Launchpad.
# Change ‘X’ into the number of icons to be showed in a single row (e.g 9).
#defaults write com.apple.dock springboard-columns -int 9

# Change ‘X’ to the number of rows (e.g 3).
#defaults write com.apple.dock springboard-rows -int 3

# Force a restart of Launchpad with the following command to apply the changes:
#defaults write com.apple.dock ResetLaunchPad -bool TRUE;killall Dock

bot "Configuring Hot Corners"
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center

# running "Top left screen corner → Mission Control"
# defaults write com.apple.dock wvous-tl-corner -int 2
# defaults write com.apple.dock wvous-tl-modifier -int 0;ok
# running "Top right screen corner → Desktop"
# defaults write com.apple.dock wvous-tr-corner -int 4
# defaults write com.apple.dock wvous-tr-modifier -int 0;ok
running "Bottom left screen corner -> Sleep"
defaults write com.apple.dock wvous-bl-corner -int 10
# running "Bottom right screen corner → Start screen saver"
# defaults write com.apple.dock wvous-br-corner -int 5
# defaults write com.apple.dock wvous-br-modifier -int 0;ok
