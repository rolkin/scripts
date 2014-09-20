#!/bin/bash

# Uses feh to set the background image
# This script executes at login via i3config

BG_IMG_PATH='/home/shawn/Pictures/blocks.jpg'

feh --bg-fill $BG_IMG_PATH
