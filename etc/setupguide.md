# Packages 
## Via apt-get
```
apt-get git zsh tig vim vim-gui-common curl tmux screenfetch i3blocks lxappearance thunar feh silversearcher-ag ranger arandr libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev automake libevent-dev ncurses-dev
```

## Via deb
```
google-chrome-stable
```

## Via curl
```
rvm
tmuxinator
```

## External packages
### Numix
```
apt-add-repository ppa:numix/ppa
apt-get numix-gtk-theme numix-icon-theme numix-icon-theme-circle
```

### Spotify
Taken from: https://www.spotify.com/ph/download/linux/
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

# ASUS X450LDV issues
## Touchpad not recognized
Install kernel >4.0. (Taken from: http://www.yourownlinux.com/2015/07/how-to-install-linux-kernel-4-1-3-in-linux.html)
```
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.3-unstable/linux-headers-4.1.3-040103_4.1.3-040103.201507220129_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.3-unstable/linux-headers-4.1.3-040103-generic_4.1.3-040103.201507220129_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.3-unstable/linux-image-4.1.3-040103-generic_4.1.3-040103.201507220129_amd64.deb
sudo dpkg -i linux-headers-4.1.3*.deb linux-image-4.1.3*.deb
sudo reboot
```
## Multimedia keys
Edit /etc/default/grub:
```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash acpi_osi="
```
Run `sudo update-grub`.

## Debian-specific issues
To fix issues present when I last installed Debian Jessie.
### No audio
Install kernel >4.1.*. See 'Touchpad not recognized' above.
### No Wi-Fi
`apt-get firmware-ralink`
### Partition mounting permissions
Edit `/usr/share/polkit-1/actions/org.freedesktop.udisks2.policy`, then set mount permissions to yes for any user.
