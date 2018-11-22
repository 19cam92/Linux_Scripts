#!/bin/bash

printf '\033]2;%s\007' "Cleaning Old Package"

echo "Cleaning Old Package/Configs"
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get clean
echo ""
echo "Cleaning Trash Bin"
rm -rf /home/*/.local/share/Trash/*/** &> /dev/null
rm -rf /root/.local/share/Trash/*/** &> /dev/null
echo ""
echo "Done!!!"
read
