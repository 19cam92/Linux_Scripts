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

printf '\033]2;%s\007' "Cleaning Junk Files"
echo "${cyan}Cleaning Junk Files"
echo " "
echo "${cyan}Writing by 19cam92@xda"
echo "Script version 1.0.0${reset}"

echo " "
echo "${red}!!!!          THIS SCRIPT NEEDS ROOT         !!!!${reset}"
echo "${red}!!!! PLEASE ENTER YOUR PASSWORD WHEN PROMTED !!!!${reset}"
echo " "
sudo whoami

sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get clean

rm -rf ~/.local/share/Trash/*/** &> /dev/null
rm -rf /root/.local/share/Trash/*/** &> /dev/null
rm -rf ~/.cache/thumbnails
rm -rf ~/.minecraft/logs
rm -rf ~/.bash_history
rm -rf ~/.xsession-errors
rm -rf ~/.xsession-errors.old

echo ""
echo "${green}Done!!!!${reset}"
read
