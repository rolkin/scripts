#!/bin/bash

main="eDP1"
connected=$(xrandr | grep -e "\bconnected" | grep -v "$main" | cut -f 1 -d " ")
disconnected=$(xrandr | grep -e "disconnected" | cut -f 1 -d " ")

monitors_on="--output $main --mode 1536x864_60.00"
monitors_off=""

for i in $connected
do
  monitors_on="$monitors_on --output $i --auto --right-of $main"
done

for i in $disconnected
do
  monitors_off="$monitors_off --output $i --off "
done

echo "modified: xrandr" $monitors_on $monitors_off
xrandr $monitors_on $monitors_off
