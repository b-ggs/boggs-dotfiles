export ZSH=~/.oh-my-zsh
ZSH_THEME="eastwood"
DISABLE_AUTO_TITLE="true"
plugins=(git)

Plugins=(git)

source ~/.rvm/scripts/rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export TERM="xterm-256color" #256 colors in gnome-terminal

source $ZSH/oh-my-zsh.sh

d=~/.dircolors
test -r $d && eval "$(dircolors $d)"

# Open dotfiles
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias i3conf="vim ~/.i3/config"
alias tmuxconf="vim ~/.tmux.conf"

# Commands
alias mountdata="udisks --mount /dev/sda5"
alias unmountdata="udisks --unmount /dev/sda5"
alias setvolume="amixer -D pulse sset Master "
alias setvolumemax="pactl set-sink-volume 1 "
alias setvolume150="pactl set-sink-volume 1 150%"
alias findgrep="find . | grep"
alias findag="find . | ag"
alias chrome="google-chrome"
alias bgreset="feh --bg-fill ~/assets/background.png"
alias bgset="feh --bg-fill"

# Tmux
alias tmuxl="tmux ls"
alias tmuxa="tmux attach-session -t"
alias tmuxk="tmux kill-session -t"

# Directories
alias home="cd ~"
alias dotfiles="cd ~/dotfiles"
alias dev="cd ~/dev"
alias ind="cd ~/dev/indinero"
alias indvag="cd ~/dev/vagrant_indinero"
alias datadrive="cd /media/Data"
alias datadrivethunar="cd /media/boggs/Data"

# Displays
alias x450ldv_disconnect="xrandr --output HDMI1 --off"
alias x450ldv_externalmirrorhdmi1="xrandr --output HDMI1 --mode 1024x768 --same-as eDP1"
alias x450ldv_externalspectrum="~/dotfiles/xrandr/x450ldv_spectrum_right.sh"
alias aspiree1_externalsamsung="~/dotfiles/xrandr/aspiree1_samsung_left.sh"
alias x450ldv_externalsamsung="~/dotfiles/xrandr/x450ldv_samsung_left.sh"

# Synaptics
alias synaptics_natural="synclient VertScrollDelta=-67 && synclient HorizScrollDelta=-67"

# RVM
alias rvm_ind="rvm ruby-2.1.5@indinero"
