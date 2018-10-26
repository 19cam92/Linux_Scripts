#!/bin/bash

# Installs google chrome
echo " "
echo -n "${yellow}Install Google Chrome (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Installing Google Chrome"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    rm -f google-chrome-stable_current_amd64.deb
    echo "Done!!!"
else
    echo "Skipping Google Chrome"
fi

# Installs LibreOffice
echo " "
echo -n "${yellow}Install LibreOffice (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Installing LibreOffice"
    sudo add-apt-repository ppa:libreoffice/ppa
    sudo apt-get update
    sudo apt install libreoffice
    echo "Done!!!"
else
    echo "Skipping LibreOffice"
fi

# Installs Ubuntu Cleaner
echo " "
echo -n "${yellow}Install Ubuntu Cleaner (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Installing Ubuntu Cleaner"
    sudo apt install software-properties-common
    sudo add-apt-repository ppa:gerardpuig/ppa
    sudo apt update
    sudo apt install ubuntu-cleaner
    echo "Done!!!"
else
    echo "Skipping Ubuntu Cleaner"
fi

# Installs Ubuntu Kernel Update Utility
echo " "
echo -n "${yellow}Install Ubuntu Kernel Update Utility (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Installing Ubuntu Kernel Update Utility"
    sudo add-apt-repository ppa:teejee2008/ppa
    sudo apt-get update
    sudo apt-get install ukuu
    echo "Done!!!"
else
    echo "Skipping Ubuntu Kernel Update Utility"
fi

# Installs VLC Media Player
echo " "
echo -n "${yellow}Install VLC Media Player (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Installing VLC Media Player"
    sudo add-apt-repository ppa:videolan/stable-daily
    sudo apt-get update
    sudo apt-get install vlc
else
    echo "Skipping VLC Media Player"
fi
read
