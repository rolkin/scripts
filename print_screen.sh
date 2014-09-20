#!/bin/bash

# Takes screenshot with date formatted filename
# Moves file to the defined path

FILENAME_FMT='scrot_%d-%m-%Y_%I-%M-%S%p.png'
MV_PATH='~/Pictures/Screenshots/'

scrot $FILENAME_FMT -e "mv $FILENAME_FMT $MV_PATH"
