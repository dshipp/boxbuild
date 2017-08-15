# dshipp's boxbuild


Uses [GNU Stow](https://www.gnu.org/software/stow/) to create symbolic links to dotfiles.
Mac software is installed with [brew](https://brew.sh) and brewcask using the `Brewfile`.
macOS preferences are set from the `macos_preferences` 

## Prerequisites

1. Update macOS
1. Install Xcode from the Mac App Store and accept the license agreement
1. Execute: `xcode-select --install`
1. Copy SSH keys into `~/.ssh` and `chmod 600` each

## Mac installation

1. Clone this repo to `~/projects/boxbuild`
1. Execute `./mac_install.sh` in `boxbuild`
1. Manually add sensitive information to `~/.sensitive` (sourced by .bash_profile) and `chmod 600` it

## Linux installation 

TODO - requires a linux_install.sh which installs tools using apt/yum can still use 


## Thanks

This repository is heavliy inspired by:
* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
* [Dries Vints](https://github.com/driesvints/dotfiles)
* [Troy McCall](https://troymccall.com/better-bash-4--completions-on-osx/)
* [DrDuh](https://github.com/drduh/macOS-Security-and-Privacy-Guide)
