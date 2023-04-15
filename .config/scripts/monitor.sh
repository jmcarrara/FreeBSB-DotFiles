#!/bin/sh

lvds() {
xrandr --output LVDS-1 --auto --dpi 96
xrandr --output VGA-1 --off
xrandr --output DP-1 --off
xrandr --output HDMI-1 --off
doas sysctl machdep.lidaction=1
xwallpaper --stretch $HOME/.wallpaper.jpg
setxkbmap -model thinkpad br
}

vga() {
xrandr --output LVDS-1 --off
xrandr --output VGA-1 --auto --dpi 96
xrandr --output DP-1 --off
xrandr --output HDMI-1 --off
doas sysctl machdep.lidaction=0
xwallpaper --stretch $HOME/.wallpaper.jpg
setxkbmap -model dell101 br
}

dp() {
xrandr --output LVDS-1 --off
xrandr --output VGA-1 --off
xrandr --output DP-1 --auto --dpi 96
xrandr --output HDMI-1 --off
doas sysctl machdep.lidaction=0
xwallpaper --stretch $HOME/.wallpaper.jpg
setxkbmap -model dell101 br
}

hdmi() {
xrandr --output LVDS-1 --off
xrandr --output VGA-1 --off
xrandr --output DP-1 --off
xrandr --output HDMI-1 --auto --dpi 96
doas sysctl machdep.lidaction=0
xwallpaper --stretch $HOME/.wallpaper.jpg
setxkbmap -model dell101 br
}

set -x
xrandr --query | grep "LVDS-1 connected" && lvds
xrandr --query | grep "VGA-1 connected" && vga 
xrandr --query | grep "DP-1 connected" && dp
xrandr --query | grep "HDMI-1 connected" && hdmi
