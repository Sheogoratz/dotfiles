#!/bin/bash

cd ~/Pictures/Screenshots/

rofi_command="rofi -width 15 -lines 3 -p Screenshot "

### Options ###
screen=" Full"
area=" Selection"
window=" Window"
# Variable passed to rofi
options="$screen\n$area\n$window"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 1)"
case $chosen in
    $screen)
        sleep 1; scrot
        ;;
    $area)
        scrot -s
        ;;
    $window)
        sleep 1; scrot -u
        ;;
esac
