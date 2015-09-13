#!/bin/sh
xrandr --output HDMI1 --mode 1680x1050 --pos 1366x0 --rotate normal 
xrandr --output DP1 --off 
xrandr --output eDP1 --mode 1366x768 --pos 0x208 --rotate normal 
xrandr --output VIRTUAL1 --off
