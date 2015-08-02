~/dotfiles/xrandr/x450ldv_spectrum_right.sh
feh --bg-fill ~/assets/background.png
syndaemon -i 1 -d -t -k
synclient VertScrollDelta=-67
synclient HorizScrollDelta=-67
synclient AccelFactor=0.0754717
compton -b --config ~/dotfiles/compton.conf
setxkbmap -option caps:none
