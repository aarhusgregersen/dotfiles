#!/bin/sh

running "Wipe all (default) app icons from the Dock"
dockutil --no-restart --remove all
# defaults write com.apple.dock persistent-apps -array "";ok

dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/System/Applications/Mail.app"
dockutil --no-restart --add "/System/Applications/Calendar.app"
dockutil --no-restart --add "/System/Applications/Utilities/Terminal.app"
dockutil --no-restart --add "/System/Applications/System Preferences.app"
dockutil --no-restart --add "/Applications/Spotify.app"

killall Dock





# (
#         {
#         GUID = 1864197496;
#         "tile-data" =         {
#             book = {length = 732, bytes = 0x626f6f6b dc020000 00000410 30000000 ... 40010000 00000000 };
#             "bundle-identifier" = "com.spotify.client";
#             "dock-extra" = 0;
#             "file-data" =             {
#                 "_CFURLString" = "file:///Applications/Spotify.app/";
#                 "_CFURLStringType" = 15;
#             };
#             "file-label" = Spotify;
#             "file-mod-date" = 148403401072492;
#             "file-type" = 41;
#             "parent-mod-date" = 21744818431784;
#         };
#         "tile-type" = "file-tile";
#     },
#         {
#         GUID = 1864197494;
#         "tile-data" =         {
#             book = {length = 748, bytes = 0x626f6f6b ec020000 00000410 30000000 ... 48010000 00000000 };
#             "bundle-identifier" = "com.google.Chrome";
#             "dock-extra" = 0;
#             "file-data" =             {
#                 "_CFURLString" = "file:///Applications/Google%20Chrome.app/";
#                 "_CFURLStringType" = 15;
#             };
#             "file-label" = "Google Chrome";
#             "file-mod-date" = 3693621511;
#             "file-type" = 41;
#             "parent-mod-date" = 21744818431784;
#         };
#         "tile-type" = "file-tile";
#     },
#         {
#         GUID = 1138897043;
#         "tile-data" =         {
#             book = {length = 732, bytes = 0x626f6f6b dc020000 00000410 30000000 ... 40010000 00000000 };
#             "bundle-identifier" = "org.mozilla.firefox";
#             "dock-extra" = 0;
#             "file-data" =             {
#                 "_CFURLString" = "file:///Applications/Firefox.app/";
#                 "_CFURLStringType" = 15;
#             };
#             "file-label" = Firefox;
#             "file-mod-date" = 39165202672034;
#             "file-type" = 41;
#             "parent-mod-date" = 21744818431784;
#         };
#         "tile-type" = "file-tile";
#     },
#         {
#         GUID = 4129153204;
#         "tile-data" =         {
#             book = {length = 556, bytes = 0x626f6f6b 2c020000 00000410 30000000 ... 04000000 00000000 };
#             "bundle-identifier" = "com.skype.skype";
#             "dock-extra" = 0;
#             "file-data" =             {
#                 "_CFURLString" = "file:///Applications/Skype.app/";
#                 "_CFURLStringType" = 15;
#             };
#             "file-label" = Skype;
#             "file-mod-date" = 3689861056;
#             "file-type" = 41;
#             "parent-mod-date" = 21744818431784;
#         };
#         "tile-type" = "file-tile";
#     },
#         {
#         GUID = 1864197495;
#         "tile-data" =         {
#             book = {length = 556, bytes = 0x626f6f6b 2c020000 00000410 30000000 ... 04000000 00000000 };
#             "bundle-identifier" = "com.evernote.Evernote";
#             "dock-extra" = 0;
#             "file-data" =             {
#                 "_CFURLString" = "file:///Applications/Evernote.app/";
#                 "_CFURLStringType" = 15;
#             };
#             "file-label" = Evernote;
#             "file-mod-date" = 189368799995648;
#             "file-type" = 41;
#             "parent-mod-date" = 21744818431784;
#         };
#         "tile-type" = "file-tile";
#     },
#         {
#         GUID = 3105374776;
#         "tile-data" =         {
#             book = {length = 580, bytes = 0x626f6f6b 44020000 00000410 30000000 ... 04000000 00000000 };
#             "bundle-identifier" = "com.apple.Notes";
#             "dock-extra" = 0;
#             "file-data" =             {
#                 "_CFURLString" = "file:///System/Applications/Notes.app/";
#                 "_CFURLStringType" = 15;
#             };
#             "file-label" = Noter;
#             "file-mod-date" = 3660710400;
#             "file-type" = 41;
#             "parent-mod-date" = 3660710400;
#         };
#         "tile-type" = "file-tile";
#     },
#         {
#         "tile-data" =         {
#             "file-label" = "";
#         };
#         "tile-type" = "spacer-tile";
#     },
#         {
#         GUID = 1864197497;
#         "tile-data" =         {
#             book = {length = 556, bytes = 0x626f6f6b 2c020000 00000410 30000000 ... 04000000 00000000 };
#             "bundle-identifier" = "com.tinyspeck.slackmacgap";
#             "dock-extra" = 0;
#             "file-data" =             {
#                 "_CFURLString" = "file:///Applications/Slack.app/";
#                 "_CFURLStringType" = 15;
#             };
#             "file-label" = Slack;
#             "file-mod-date" = 3692973774;
#             "file-type" = 41;
#             "parent-mod-date" = 21744818431784;
#         };
#         "tile-type" = "file-tile";
#     },
#         {
#         GUID = 3445154236;
#         "tile-data" =         {
#             book = {length = 740, bytes = 0x626f6f6b e4020000 00000410 30000000 ... 44010000 00000000 };
#             "bundle-identifier" = "org.filezilla-project.filezilla";
#             "dock-extra" = 0;
#             "file-data" =             {
#                 "_CFURLString" = "file:///Applications/FileZilla.app/";
#                 "_CFURLStringType" = 15;
#             };
#             "file-label" = FileZilla;
#             "file-mod-date" = 3677642544;
#             "file-type" = 41;
#             "parent-mod-date" = 21744818431784;
#         };
#         "tile-type" = "file-tile";
#     },
#         {
#         GUID = 3416419313;
#         "tile-data" =         {
#             book = {length = 556, bytes = 0x626f6f6b 2c020000 00000410 30000000 ... 04000000 00000000 };
#             "bundle-identifier" = "com.postmanlabs.mac";
#             "dock-extra" = 0;
#             "file-data" =             {
#                 "_CFURLString" = "file:///Applications/Postman.app/";
#                 "_CFURLStringType" = 15;
#             };
#             "file-label" = Postman;
#             "file-mod-date" = 3677476228;
#             "file-type" = 41;
#             "parent-mod-date" = 21744818431784;
#         };
#         "tile-type" = "file-tile";
#     },
#         {
#         GUID = 2748006340;
#         "tile-data" =         {
#             book = {length = 556, bytes = 0x626f6f6b 2c020000 00000410 30000000 ... 04000000 00000000 };
#             "bundle-identifier" = "com.insomnia.app";
#             "dock-extra" = 0;
#             "file-data" =             {
#                 "_CFURLString" = "file:///Applications/Insomnia.app/";
#                 "_CFURLStringType" = 15;
#             };
#             "file-label" = Insomnia;
#             "file-mod-date" = 3690376776;
#             "file-type" = 41;
#             "parent-mod-date" = 21744818431784;
#         };
#         "tile-type" = "file-tile";
#     },
#         {
#         GUID = 1864197498;
#         "tile-data" =         {
#             book = {length = 568, bytes = 0x626f6f6b 38020000 00000410 30000000 ... 04000000 00000000 };
#             "bundle-identifier" = "com.microsoft.VSCode";
#             "dock-extra" = 0;
#             "file-data" =             {
#                 "_CFURLString" = "file:///Applications/Visual%20Studio%20Code.app/";
#                 "_CFURLStringType" = 15;
#             };
#             "file-label" = "Visual Studio Code";
#             "file-mod-date" = 3689809020;
#             "file-type" = 41;
#             "parent-mod-date" = 21744818431784;
#         };
#         "tile-type" = "file-tile";
#     },
#         {
#         GUID = 3105374777;
#         "tile-data" =         {
#             book = {length = 624, bytes = 0x626f6f6b 70020000 00000410 30000000 ... 04000000 00000000 };
#             "bundle-identifier" = "com.apple.Terminal";
#             "dock-extra" = 0;
#             "file-data" =             {
#                 "_CFURLString" = "file:///System/Applications/Utilities/Terminal.app/";
#                 "_CFURLStringType" = 15;
#             };
#             "file-label" = Terminal;
#             "file-mod-date" = 3660710400;
#             "file-type" = 41;
#             "parent-mod-date" = 3660710400;
#         };
#         "tile-type" = "file-tile";
#     },
#         {
#         GUID = 2501991190;
#         "tile-data" =         {
#             book = {length = 744, bytes = 0x626f6f6b e8020000 00000410 30000000 ... 40010000 00000000 };
#             "bundle-identifier" = "co.zeit.hyper";
#             "dock-extra" = 0;
#             "file-data" =             {
#                 "_CFURLString" = "file:///Applications/Hyper.app/";
#                 "_CFURLStringType" = 15;
#             };
#             "file-label" = Hyper;
#             "file-mod-date" = 3640278808;
#             "file-type" = 41;
#             "parent-mod-date" = 21744818431784;
#         };
#         "tile-type" = "file-tile";
#     },
#         {
#         GUID = 3416419314;
#         "tile-data" =         {
#             book = {length = 556, bytes = 0x626f6f6b 2c020000 00000410 30000000 ... 04000000 00000000 };
#             "bundle-identifier" = "com.googlecode.iterm2";
#             "dock-extra" = 0;
#             "file-data" =             {
#                 "_CFURLString" = "file:///Applications/iTerm.app/";
#                 "_CFURLStringType" = 15;
#             };
#             "file-label" = iTerm;
#             "file-mod-date" = 110753717774998;
#             "file-type" = 41;
#             "parent-mod-date" = 21744818431784;
#         };
#         "tile-type" = "file-tile";
#     },
#         {
#         "tile-data" =         {
#             "file-label" = "";
#         };
#         "tile-type" = "spacer-tile";
#     },
#         {
#         GUID = 3105374778;
#         "tile-data" =         {
#             book = {length = 580, bytes = 0x626f6f6b 44020000 00000410 30000000 ... 04000000 00000000 };
#             "bundle-identifier" = "com.apple.podcasts";
#             "dock-extra" = 0;
#             "file-data" =             {
#                 "_CFURLString" = "file:///System/Applications/Podcasts.app/";
#                 "_CFURLStringType" = 15;
#             };
#             "file-label" = Podcasts;
#             "file-mod-date" = 3660710400;
#             "file-type" = 41;
#             "parent-mod-date" = 3660710400;
#         };
#         "tile-type" = "file-tile";
#     },
#         {
#         GUID = 3105374779;
#         "tile-data" =         {
#             book = {length = 576, bytes = 0x626f6f6b 40020000 00000410 30000000 ... 04000000 00000000 };
#             "bundle-identifier" = "com.apple.TV";
#             "dock-extra" = 0;
#             "file-data" =             {
#                 "_CFURLString" = "file:///System/Applications/TV.app/";
#                 "_CFURLStringType" = 15;
#             };
#             "file-label" = TV;
#             "file-mod-date" = 3660710400;
#             "file-type" = 41;
#             "parent-mod-date" = 3660710400;
#         };
#         "tile-type" = "file-tile";
#     }
# )
