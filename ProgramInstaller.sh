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
    sudo apt-get install vlc
else
    echo "Skipping VLC Media Player"
fi

# Installs GParted
echo " "
echo -n "${yellow}Install GParted (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Installing GParted"
    sudo apt-get install gparted
else
    echo "Skipping GParted"
fi

# Installs Deluge
echo " "
echo -n "${yellow}Install Deluge (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Installing Deluge"
    sudo apt-get install deluge
else
    echo "Skipping Deluge"
fi

# Installs Stellarium
echo " "
echo -n "${yellow}Install Stellarium (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Installing Stellarium"
    sudo apt-get install stellarium
else
    echo "Skipping Stellarium"
fi

# Installs Spotify
echo " "
echo -n "${yellow}Install Spotify (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Installing Spotify"
    sudo apt-get install spotify-client
else
    echo "Skipping Spotify"
fi

# Installs Steam
echo " "
echo -n "${yellow}Install Steam (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Installing Steam"
    sudo apt-get install steam
else
    echo "Skipping Steam"
fi

# Installs Boot-Repair
echo " "
echo -n "${yellow}Install Boot-Repair (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Installing Boot-Repair"
    sudo add-apt-repository ppa:yannubuntu/boot-repair
    sudo apt-get update
    sudo apt-get install -y boot-repair && boot-repair
else
    echo "Skipping Boot-Repair"
fi

# Installs Stacer
echo " "
echo -n "${yellow}Install Stacer (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo add-apt-repository ppa:oguzhaninan/stacer
    sudo apt-get update
    sudo apt-get install stacer
else
    echo "Skipping Stacer"
fi

# Installs Discord
echo " "
echo -n "${yellow}Install Discord (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Installing Discord"
    sudo apt-get install discord
else
    echo "Skipping Discord"
fi

# Installs Cheese
echo " "
echo -n "${yellow}Install Cheese (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Installing Cheese"
    sudo apt-get install cheese
else
    echo "Skipping Cheese"
fi

# Installs Guake
echo " "
echo -n "${yellow}Install Guake (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Installing Guake"
    sudo apt-get install guake
else
    echo "Skipping Guake"
fi

read
