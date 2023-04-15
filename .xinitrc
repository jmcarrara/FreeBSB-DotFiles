exec setxkbmap -model thinkpad br &
xidle -timeout 300 -program "/usr/local/bin/xlock -mode blank" &
xwallpaper --stretch .wallpaper.jpg &
xbattbar top &
cwm
