#!/usr/bin/env bash

# Suspend dunst and lock, then resume dunst when unlocked.
pkill -u $USER -USR1 dunst

source "$HOME/.cache/wal/colors.sh"

IN=${color0//'#'}ff
RI=${color2//'#'}ff
KE=${color7//'#'}ff

scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png


i3lock -e -i /tmp/screen.png  --pass-screen-keys --pass-media-keys --indicator \
    --insidecolor=$IN --ringcolor=$KE --line-uses-inside \
    --keyhlcolor=$RI --bshlcolor=$IN --separatorcolor=00000000 \
    --insidevercolor=$RI --insidewrongcolor=$RI \
    --ringvercolor=$IN --ringwrongcolor=$IN --indpos="x+30:y+30" \
    --radius=15 --veriftext="" --wrongtext="" --noinputtext=""
rm /tmp/screen.png
pkill -u $USER -USR2 dunst

