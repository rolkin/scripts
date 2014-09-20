#!/bin/bash

# This script takes a screenshot of the
# current screen, blurs the image to an 
# unrecognizable level, then locks the
# screen using the image as the background.
# Also removes the image due to security.

IMAGE="/tmp/screenlock.png"
BLUR="-blur 60x20"
DARKEN="-fill black -colorize 50%"

scrot $IMAGE
convert $IMAGE $BLUR $DARKEN $IMAGE
i3lock -i $IMAGE
rm $IMAGE
