export ZSH=~/.oh-my-zsh
ZSH_THEME="eastwood"
DISABLE_AUTO_TITLE="true"
plugins=(git)

Plugins=(git)

source ~/.rvm/scripts/rvm
export PATH="$PATH:$HOME/.rvm/rubies/ruby-2.1.5/bin/ruby" # Add RVM to PATH for scripting
export TERM="xterm-256color" #256 colors in gnome-terminal

source $ZSH/oh-my-zsh.sh

d=~/.dircolors
test -r $d && eval "$(dircolors $d)"

# Commands
alias mountdata="udisks --mount /dev/sda5"
alias unmountdata="udisks --unmount /dev/sda5"
alias setvolume="amixer -D pulse sset Master "
alias setvolumemax="pactl set-sink-volume 1 "
alias setvolume150="pactl set-sink-volume 1 150%"
alias findgrep="find . | grep"
alias findag="find . | ag"
alias chrome="google-chrome"
alias mux="tmuxinator"
alias bgreset="feh --bg-fill ~/assets/background.png"
alias bgset="feh --bg-fill"
# alias comptonb="compton -b --config ~/dotfiles/compton.conf"

# Tmux
alias tmuxl="tmux ls"
alias tmuxa="tmux attach-session -t"
alias tmuxk="tmux kill-session -t"

# Directories
alias home="cd ~"
alias dotfiles="cd ~/dotfiles"
alias dev="cd ~/dev"
# alias ind="cd ~/dev/indinero"
alias swarm="cd ~/dev/swarm"
# alias indvag="cd ~/dev/vagrant_indinero"
alias datadrive="cd /media/Data"
alias datadrivethunar="cd /media/boggs/Data"
alias vimbundle="cd ~/.vim/bundle"

# Displays
alias x450ldv_disconnect="xrandr --output HDMI1 --off --output DP1 --off"
alias x450ldv_externalmirrorhdmi1="xrandr --output HDMI1 --mode 1024x768 --same-as eDP1"
alias x450ldv_externalspectrum="~/dotfiles/xrandr/x450ldv_spectrum_right.sh"
# alias aspiree1_externalsamsung="~/dotfiles/xrandr/aspiree1_samsung_left.sh"
alias x450ldv_externalsamsung="~/dotfiles/xrandr/x450ldv_samsung_left.sh"
alias screenoff="xset dpms force off"

# Synaptics
alias synaptics_natural="synclient VertScrollDelta=-67 && synclient HorizScrollDelta=-67 && synclient AccelFactor=0.0754717"

# RVM
alias rvm_ind="rvm ruby-2.1.5@indinero"

# Startup
alias startup_ind="~/dotfiles/startup/indinero.sh"
alias startup_home_hdmi="~/dotfiles/startup/home_hdmi.sh"
alias startup_home_vga="~/dotfiles/startup/home_vga.sh"

# SSH
alias ssh_koding="ssh b-ggs@ubkk8848cd5a.b-ggs.koding.io"
alias ssh_koding_tunnel="ssh b-ggs@ubkk8848cd5a.b-ggs.koding.io"
