#!/bin/bash

#Num  Colour    #define         R G B

#0    black     COLOR_BLACK     0,0,0
#1    red       COLOR_RED       1,0,0
#2    green     COLOR_GREEN     0,1,0
#3    yellow    COLOR_YELLOW    1,1,0
#4    blue      COLOR_BLUE      0,0,1
#5    magenta   COLOR_MAGENTA   1,0,1
#6    cyan      COLOR_CYAN      0,1,1
#7    white     COLOR_WHITE     1,1,1

yellow=`tput setaf 3`
green=`tput setaf 2`
cyan=`tput setaf 6`
red=`tput setaf 1`
reset=`tput sgr0`

printf '\033]2;%s\007' "Program Installer"
echo "${cyan}Program Installer"
echo " "
echo "${cyan}Writing by 19cam92@xda"
echo "Script version 1.0.0${reset}"

echo " "
echo "${red}!!!!          THIS SCRIPT NEEDS ROOT         !!!!${reset}"
echo "${red}!!!! PLEASE ENTER YOUR PASSWORD WHEN PROMTED !!!!${reset}"
echo " "
sudo whoami

# Installs google chrome
echo " "
echo -n "${yellow}Install Google Chrome (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    rm -f google-chrome-stable_current_amd64.deb
else
    echo "Skipping Google Chrome"
fi

# Installs Ubuntu Kernel Update Utility
echo " "
echo -n "${yellow}Install Ubuntu Kernel Update Utility (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo add-apt-repository ppa:teejee2008/ppa
    sudo apt-get update
    sudo apt-get install ukuu
else
    echo "Skipping Ubuntu Kernel Update Utility"
fi

# Installs VLC Media Player
echo " "
echo -n "${yellow}Install VLC Media Player (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt-get install vlc
else
    echo "Skipping VLC Media Player"
fi

# Installs GParted
echo " "
echo -n "${yellow}Install GParted (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt-get install gparted
else
    echo "Skipping GParted"
fi

# Installs Deluge
echo " "
echo -n "${yellow}Install Deluge (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt-get install deluge
else
    echo "Skipping Deluge"
fi

# Installs Stellarium
echo " "
echo -n "${yellow}Install Stellarium (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt-get install stellarium
else
    echo "Skipping Stellarium"
fi

# Installs Spotify
echo " "
echo -n "${yellow}Install Spotify (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt-get install spotify-client
else
    echo "Skipping Spotify"
fi

# Installs Steam
echo " "
echo -n "${yellow}Install Steam (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt-get install steam
else
    echo "Skipping Steam"
fi

# Installs Boot-Repair
echo " "
echo -n "${yellow}Install Boot-Repair (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
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
    sudo apt-get install discord
else
    echo "Skipping Discord"
fi

# Installs Cheese
echo " "
echo -n "${yellow}Install Cheese (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt-get install cheese
else
    echo "Skipping Cheese"
fi

# Installs Guake
echo " "
echo -n "${yellow}Install Guake (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt-get install guake
else
    echo "Skipping Guake"
fi

# Installs Gimp
echo " "
echo -n "${yellow}Install Gimp (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt-get install gimp
else
    echo "Skipping Gimp"
fi

# Installs Rhythmbox
echo " "
echo -n "${yellow}Install Rhythmbox (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt-get install rhythmbox
else
    echo "Skipping Rhythmbox"
fi

# Installs LibreOffice
echo " "
echo -n "${yellow}Install LibreOffice (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt-get install libreoffice
else
    echo "Skipping LibreOffice"
fi

# Installs Transmission
echo " "
echo -n "${yellow}Install Transmission (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt-get install transmission-gtk
else
    echo "Skipping Transmission"
fi

# Installs Htop
echo " "
echo -n "${yellow}Install Htop (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt-get install htop
else
    echo "Skipping Htop"
fi

#Install ADB/Fastboot
echo " "
echo -n "${yellow}Install ADB/Fastboot (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt-get install adb
    sudo apt-get install fastboot
else
    echo "Skipping ADB/Fastboot"
fi

echo "${green}Done!!!${reset}"

read