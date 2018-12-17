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

printf '\033]2;%s\007' "Setting CPU freq & Governor"
echo "${cyan}Setting CPU freq & Governor"
echo " "
echo "${cyan}Writing by 19cam92@xda"
echo "Script version 1.0.0${reset}"

echo " "
echo "${red}!!!!          THIS SCRIPT NEEDS ROOT         !!!!${reset}"
echo "${red}!!!! PLEASE ENTER YOUR PASSWORD WHEN PROMTED !!!!${reset}"
echo " "
sudo whoami

# Set CPU Governor to Performance or Powersave
echo " "
echo -n "${yellow}Set CPU Governor to Performance (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Setting Performance governor"
    echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
else
        echo "Setting Powersave governor"
    echo powersave | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
fi

# Set CPU min freq to 1Ghz
echo " "
echo -n "${yellow}Set CPU min freq to 1Ghz (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "${yellow}Setting CPU min freq to 1Ghz${reset}"
    echo 1000000 | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_min_freq
else
    echo "${yellow}Setting CPU min freq to 800Mhz${reset}"
    echo 800000 | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_min_freq
fi

echo " "
echo "${green}Done!!!!${reset}"
read
