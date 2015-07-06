# Boggs' dotfiles

## Requirements

* zsh
* vim
 * vim-gui-common (optional, for direct yank to system clipboard)
* git
* tmux
 * [tmuxinator](https://github.com/tmuxinator/tmuxinator) (optional)
* [powerline](https://github.com/powerline/powerline)
* i3
 * i3status
 * py3status
* gnome-terminal (optional, for gnome-terminal-colors)

## Installation

Clone this repository into `~`
```bash
git clone git@github.com:b-ggs/boggs-dotfiles.git
```

Update the submodules inside
```bash
git submodule init
git submodule update
```

Run `bootstrap.sh`
```bash
./bootstrap.sh
```

Update `gnome-terminal` configuration
```bash
~/boggs-dotfiles/gnome-terminal-colors/terminal-sexy.sh
OR
~/boggs-dotfiles/gnome-terminal-colors/gnome-terminal-colors-monokai/install.sh
```
    General
      Set profile default to terminal.sexy
      Font: Meslo LG S for Powerline
    Title and Command
      Run a custom command instead of my shell: tmux
