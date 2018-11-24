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

printf '\033]2;%s\007' "Program Uninstaller"
echo "${cyan}Program Uninstaller"
echo " "
echo "${cyan}Writing by 19cam92@xda"
echo "Script version 1.0.0${reset}"

echo " "
echo "${red}!!!!          THIS SCRIPT NEEDS ROOT         !!!!${reset}"
echo "${red}!!!! PLEASE ENTER YOUR PASSWORD WHEN PROMTED !!!!${reset}"
echo " "
sudo whoami

# Uninstalls google chrome
echo " "
echo -n "${yellow}Uninstall Google Chrome (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove google-chrome-stable
else
    echo "Skipping Google Chrome"
fi

# Uninstalls Ubuntu Kernel Update Utility
echo " "
echo -n "${yellow}Uninstall Ubuntu Kernel Update Utility (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove ukuu
else
    echo "Skipping Ubuntu Kernel Update Utility"
fi

# Uninstalls VLC Media Player
echo " "
echo -n "${yellow}Uninstall VLC Media Player (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove vlc
else
    echo "Skipping VLC Media Player"
fi

# Uninstalls GParted
echo " "
echo -n "${yellow}Uninstall GParted (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove gparted
else
    echo "Skipping GParted"
fi

# Uninstalls Deluge
echo " "
echo -n "${yellow}Uninstall Deluge (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove deluge
else
    echo "Skipping Deluge"
fi

# Uninstalls Stellarium
echo " "
echo -n "${yellow}Install Stellarium (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove stellarium
else
    echo "Skipping Stellarium"
fi

# Uninstalls Spotify
echo " "
echo -n "${yellow}Uninstall Spotify (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove spotify-client
else
    echo "Skipping Spotify"
fi

# Uninstalls Steam
echo " "
echo -n "${yellow}Uninstall Steam (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove steam
else
    echo "Skipping Steam"
fi

# Uninstalls Boot-Repair
echo " "
echo -n "${yellow}Uninstall Boot-Repair (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo add-apt-repository ppa:yannubuntu/boot-repair
    sudo apt-get update
    sudo apt-get install -y boot-repair && boot-repair
else
    echo "Skipping Boot-Repair"
fi

# Uninstalls Stacer
echo " "
echo -n "${yellow}Uninstall Stacer (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove stacer
else
    echo "Skipping Stacer"
fi

# Uninstalls Discord
echo " "
echo -n "${yellow}Uninstall Discord (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove discord
else
    echo "Skipping Discord"
fi

# Uninstalls Cheese
echo " "
echo -n "${yellow}Uninstall Cheese (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove cheese
else
    echo "Skipping Cheese"
fi

# Uninstalls Guake
echo " "
echo -n "${yellow}Uninstall Guake (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove guake
else
    echo "Skipping Guake"
fi

# Uninstalls Gimp
echo " "
echo -n "${yellow}Uninstall Gimp (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove gimp
else
    echo "Skipping Gimp"
fi

# Uninstalls Rhythmbox
echo " "
echo -n "${yellow}Uninstall Rhythmbox (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove rhythmbox
else
    echo "Skipping Rhythmbox"
fi

# Uninstalls LibreOffice
echo " "
echo -n "${yellow}Uninstall LibreOffice (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove libreoffice
else
    echo "Skipping LibreOffice"
fi

# Uninstalls Transmission
echo " "
echo -n "${yellow}Uninstall Transmission (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove transmission-gtk
else
    echo "Skipping Transmission"
fi

# Unlnstalls Htop
echo " "
echo -n "${yellow}Unlnstalls Htop (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt remove htop
else
    echo "Skipping Htop"
fi

#Unlnstalls ADB/Fastboot
echo " "
echo -n "${yellow}Unlnstalls ADB/Fastboot (y/n)? ${reset}"
read answer
if echo "@answer" | grep -iq "^y" ;then
    sudo apt remove adb && sudo apt remove fastboot
else
    echo "Skipping ADB/Fastboot"
fi

echo "${green}Done!!!${reset

read
