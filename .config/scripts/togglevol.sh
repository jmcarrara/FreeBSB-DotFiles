#!/bin/sh

if [ -f $HOME/.config/scripts/togglevol ]
then
        mixer `cat $HOME/.config/scripts/togglevol`
        rm $HOME/.config/scripts/togglevol 
else
        mixer -s vol > $HOME/.config/scripts/togglevol 
        mixer vol 0:0
fi
