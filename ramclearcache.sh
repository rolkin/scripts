#!/bin/bash

# Displays the current RAM usage, asks for password,
# then drops the cached portion of used RAM.

# Be careful. This could cause unexpected 
# behavior when used during large file transfers.

free -mh | head -2
echo "------"
sync; echo 3 | sudo tee /proc/sys/vm/drop_caches
echo "------"
free -mh | head -2
