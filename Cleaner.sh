#!/bin/bash

printf '\033]2;%s\007' "Cleaning Old Package"

echo "Cleaning Old Package/Configs"
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get clean
echo ""
echo ""
echo "Cleaning Trash Bin"
rm -r -f ~/.local/share/Trash/files/*
#echo ""
#echo ""
#echo "Cleaning Thumbnails"
#find ~/.thumbnails -type f -atime +7 -exec rm {} \;
echo ""
echo ""
echo "DONE"
read
