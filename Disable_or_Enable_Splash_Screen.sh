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

printf '\033]2;%s\007' "Disabling Boot Logo"

# Disables the Boot Logo
echo " "
echo -n "${yellow}Disabling Boot Logo (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Disabling"
    sudo sed '/GRUB_CMDLINE_LINUX_DEFAULT=/ s/"quiet splash"/""/g' -i /etc/default/grub
    sudo update-grub
else
    echo "Enabling"
    sudo sed '/GRUB_CMDLINE_LINUX_DEFAULT=/ s/""/"quiet splash"/g' -i /etc/default/grub
    sudo update-grub
fi

echo " "
echo "${green}Done!!!${reset}"
read
