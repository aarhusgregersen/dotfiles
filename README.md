# dotfiles
This is my collection of dotfiles, inspired by [atomantic](https://github.com/atomantic/dotfiles) and [webpro](https://github.com/webpro/dotfiles)

## Overview

This dotfiles is focused heavily around automation, being heavily inspired by atomantic's dotfiles (link above). Just running `install.sh` (instructions in the following section) will take care of the following:

- Install XCode Command Line Tools
- Install Brew
- Install git
- Install and update zsh
- Install Ruby
- Set ZSH as default shell
- Copies this entire repo via SSH
- Copies dotfiles (from `./homedir`) to `$HOME`
- Installs VIM
- Installs fonts
  ```
  ./fonts/install.sh
  brew tap homebrew/cask-fonts
  require_brew svn #required for roboto
  require_cask font-fontawesome
  require_cask font-awesome-terminal-fonts
  require_cask font-hack
  require_cask font-inconsolata-dz-for-powerline
  require_cask font-inconsolata-g-for-powerline
  require_cask font-inconsolata-for-powerline
  require_cask font-roboto-mono
  require_cask font-roboto-mono-for-powerline
  require_cask font-source-code-pro
  ```
- Installs NVM at set default to latest stable version
- Sets global npm configuration `npm config set save-exact true`
- Sets sensible system defaults according to my preference :-)

Basically everything that you'd need!

## Setting up your Mac
You should complete the following steps in order, to use these dotfiles:
- Update macOS to the latest version with the App Store
- ?
- Clone this repo to ~/.dotfiles
- run `install.sh` to start installation
- Restart your computer to finalize the process

# Installed software
Besides the much needed utilities installed above, there are plenty of applications we might need as a day-to-day user of our machine, so here's a complete list of the software installed by these dotfiles:

mas
tmux
dockutil
imagemagick
vim
redis

dropbox
firefox
font-fira-code
google-chrome
postman
slack
sourcetree
spotify
visual-studio-code
dashlane
flux
zsh
docker
evernote
rocket
insomnia
iterm2
wondershare-filmora
discord
mongodb-compass
obs
postgres
the-unarchiver


## Todo:

- [x] Move MacOS defaults from install.sh to `macOs/defaults.sh`
- [x] Compare `defaults.sh` with individual sectionalized files in /macOs folder
- [x] Find out how to test dotfiles (~~docker?~~ Brick my new macbook [x])
– [ ] Find a way to install the remaining applications, those that won't work with Brew/Cask
  - [ ] Todoist (mas install 585829637)
  - [ ] oh-my-zsh (sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended)
  - [ ] Adminer
  - [ ] 1287239339 ColorSlurp (2.2.1)
  - [ ] 497799835 Xcode
- [ ] Find out how to share vscode configuration and plugins
  - https://stackoverflow.com/questions/35929746/automatically-install-extensions-in-vs-code
- [ ] Implement SSH config in a way that isn't published on git
- [x] Figure out how to use - and if we need - the Node/JS stuff
- [x] Create a script that gets and installs git before proceeeding with the rest of the installation
  - [x] This should also install xcode developer tools
- [x] Find a way to include /install/* files
- [ ] Find out how to duplicate my iTerm2 configuration
- [ ] Install my favorite fonts (Menlo, Monaco, Powerlevel9k fonts)
  - [ ] Find list of currently installed fonts on MacOS
- [ ] Find out how to copy VSCode settings
  - https://superuser.com/questions/1080682/how-do-i-back-up-my-vs-code-settings-and-list-of-installed-extensions
  - Settings Sync
- [ ] Find a way to copy the configurations from subfolders as done with the [webpro dotfiles binary](https://github.com/webpro/dotfiles/blob/master/bin/dotfiles)
  ```
  sub_macos () {
    for DEFAULTS_FILE in "${DOTFILES_DIR}"/macos/defaults*.sh; do
      echo "Applying ${DEFAULTS_FILE}" && . "${DEFAULTS_FILE}"
    done
    echo "Done. Some changes may require a logout/restart to take effect."
  }

  sub_dock () {
    . "${DOTFILES_DIR}/macos/dock.sh" && echo "Dock reloaded."
  }

- [ ] Write about this on my Blog
- [ ] Trial and error...
- [ ] Perhaps some day in the future, expand this to include Linux
