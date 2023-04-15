#!/bin/sh

vga() {
xrandr --output VGA-1 --rotate left --left-of DP1
xrandr --output DP-1 --auto
xrandr --output HDMI-1 --off
#doas sysctl machdep.lidaction=0
xwallpaper --stretch $HOME/.wallpaper.jpg
setxkbmap -model dell101 br
}

set -x
xrandr --query | grep "VGA-1 connected" && vga 
