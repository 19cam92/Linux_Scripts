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

printf '\033]2;%s\007' "Turning off SWAP"
echo "${cyan}Turning off SWAP"
echo " "
echo "${cyan}Writing by 19cam92@xda"
echo "Script version 1.0.0${reset}"

echo " "
echo "${red}!!!!          THIS SCRIPT NEEDS ROOT         !!!!${reset}"
echo "${red}!!!! PLEASE ENTER YOUR PASSWORD WHEN PROMTED !!!!${reset}"
echo " "
sudo whoam

echo " "
echo "${yellow}Turning off SWAP${reset}"
sudo swapoff -a
echo " "
echo "${green}Done!!!!${reset}"
read
