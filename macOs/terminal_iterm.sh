# running "Only use UTF-8 in Terminal.app"
# defaults write com.apple.terminal StringEncodings -array 4;ok
#
# running "Use a modified version of the Solarized Dark theme by default in Terminal.app"
# TERM_PROFILE='Solarized Dark xterm-256color';
# CURRENT_PROFILE="$(defaults read com.apple.terminal 'Default Window Settings')";
# if [ "${CURRENT_PROFILE}" != "${TERM_PROFILE}" ]; then
# 	open "./configs/${TERM_PROFILE}.terminal";
# 	sleep 1; # Wait a bit to make sure the theme is loaded
# 	defaults write com.apple.terminal 'Default Window Settings' -string "${TERM_PROFILE}";
# 	defaults write com.apple.terminal 'Startup Window Settings' -string "${TERM_PROFILE}";
# fi;

#running "Enable “focus follows mouse” for Terminal.app and all X11 apps"
# i.e. hover over a window and start `typing in it without clicking first
defaults write com.apple.terminal FocusFollowsMouse -bool true
#defaults write org.x.X11 wm_ffm -bool true;ok



running "Don’t display the annoying prompt when quitting iTerm"
defaults write com.googlecode.iterm2 PromptOnQuit -bool false;ok
running "hide tab title bars"
defaults write com.googlecode.iterm2 HideTab -bool true;ok
running "set system-wide hotkey to show/hide iterm with ^\`"
defaults write com.googlecode.iterm2 Hotkey -bool true;ok
running "hide pane titles in split panes"
defaults write com.googlecode.iterm2 ShowPaneTitles -bool false;ok
running "animate split-terminal dimming"
defaults write com.googlecode.iterm2 AnimateDimming -bool true;ok
defaults write com.googlecode.iterm2 HotkeyChar -int 96;
defaults write com.googlecode.iterm2 HotkeyCode -int 50;
defaults write com.googlecode.iterm2 FocusFollowsMouse -int 1;
defaults write com.googlecode.iterm2 HotkeyModifiers -int 262401;
running "Make iTerm2 load new tabs in the same directory"
/usr/libexec/PlistBuddy -c "set \"New Bookmarks\":0:\"Custom Directory\" Recycle" ~/Library/Preferences/com.googlecode.iterm2.plist
running "setting fonts"
defaults write com.googlecode.iterm2 "Normal Font" -string "Hack-Regular 12";
defaults write com.googlecode.iterm2 "Non Ascii Font" -string "RobotoMonoForPowerline-Regular 12";
ok
running "reading iterm settings"
defaults read -app iTerm > /dev/null 2>&1;
ok









# "Default Window Settings" = Dracula;
#     DefaultProfilesVersion = 1;
#     HasMigratedDefaults = 1;
#     "Man Page Window Settings" = "Man Page";
#     NSNavLastRootDirectory = "~/Documents";
#     NSNavLastUserSetHideExtensionButtonState = 1;
#     NSNavPanelExpandedSizeForOpenMode = "{712, 448}";
#     NSNavPanelExpandedSizeForSaveMode = "{712, 448}";
#     "NSSplitView Subview Frames NSColorPanelSplitView" =     (
#         "0.000000, 0.000000, 224.000000, 258.000000, NO, NO",
#         "0.000000, 259.000000, 224.000000, 48.000000, NO, NO"
#     );
#     "NSToolbar Configuration com.apple.NSColorPanel" =     {
#         "TB Is Shown" = 1;
#     };
#     "NSWindow Frame NSFontPanel" = "921 138 445 107 0 0 1440 877 ";
#     "NSWindow Frame TTAppPreferences" = "803 282 672 538 0 0 1920 1057 ";
#     "NSWindow Frame TTWindow" = "394 58 1040 605 0 0 1920 1055 ";
#     "NSWindow Frame TTWindow Basic" = "40 473 570 366 0 0 1440 877 ";
#     "NSWindow Frame TTWindow Dracula" = "609 431 745 455 0 0 1920 1055 ";
#     "NSWindow Frame TTWindow Pro" = "1629 55 781 477 1440 -180 1920 1057 ";
#     PMPrintingExpandedStateForPrint2 = 0;
#     ProfileCurrentVersion = "2.07";
#     SecureKeyboardEntry = 0;
#     "Startup Window Settings" = Dracula;
#     "TTAppPreferences Selected Tab" = 1;
#     "Window Settings" =     {
#         Basic =         {
#             Font = {length = 267, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000cf };
#             FontAntialias = 1;
#             FontWidthSpacing = "1.004032258064516";
#             ProfileCurrentVersion = "2.07";
#             name = Basic;
#             type = "Window Settings";
#         };
#         Dracula =         {
#             ANSIBlackColor = {length = 274, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000d9 };
#             ANSIBlueColor = {length = 273, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000d8 };
#             ANSIBrightBlackColor = {length = 274, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000d9 };
#             ANSIBrightBlueColor = {length = 273, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000d8 };
#             ANSIBrightCyanColor = {length = 274, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000d9 };
#             ANSIBrightGreenColor = {length = 273, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000d8 };
#             ANSIBrightMagentaColor = {length = 263, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000ce };
#             ANSIBrightRedColor = {length = 262, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000cd };
#             ANSIBrightWhiteColor = {length = 274, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000d9 };
#             ANSIBrightYellowColor = {length = 273, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000d8 };
#             ANSICyanColor = {length = 274, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000d9 };
#             ANSIGreenColor = {length = 273, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000d8 };
#             ANSIMagentaColor = {length = 263, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000ce };
#             ANSIRedColor = {length = 263, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000ce };
#             ANSIYellowColor = {length = 273, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000d8 };
#             BackgroundColor = {length = 274, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000d9 };
#             Font = {length = 259, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000c7 };
#             ProfileCurrentVersion = "2.07";
#             SelectionColor = {length = 274, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000d9 };
#             TextBoldColor = {length = 263, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000ce };
#             TextColor = {length = 239, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 000000b6 };
#             columnCount = 120;
#             name = Dracula;
#             rowCount = 30;
#             type = "Window Settings";
#         };
