# Packages 
## Via apt-get
```
sudo apt-get install git zsh tig vim vim-gui-common curl tmux screenfetch i3blocks lxappearance thunar feh silversearcher-ag ranger arandr libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev automake libevent-dev ncurses-dev conky dmenu nodejs xbacklight libx11-dev libxtst-dev libxt-dev libsm-dev libxpm-dev gdebi udisks python3-dev python-pip
```

## Packages usually installed
```
rvm
tmuxinator
google-chrome-stable
```

## External packages
### Numix
```
# apt-add-repository ppa:numix/ppa
# apt-get install numix-gtk-theme numix-icon-theme numix-icon-theme-circle
```

### Arc
```
# sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
# apt-get update
# apt-get install arc-theme
```

### Spotify
[source](https://www.spotify.com/ph/download/linux/)
```
# 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client
```

