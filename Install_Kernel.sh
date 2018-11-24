#!/bin/bash

KERNELVERSION=v4.19.4
FILE1=linux-headers-4.19.4-041904_4.19.4-041904.201811230330_all.deb
FILE2=linux-headers-4.19.4-041904-generic_4.19.4-041904.201811230330_amd64.deb
FILE3=linux-image-unsigned-4.19.4-041904-generic_4.19.4-041904.201811230330_amd64.deb
FILE4=linux-modules-4.19.4-041904-generic_4.19.4-041904.201811230330_amd64.deb

###############################################################################################################################################
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

printf '\033]2;%s\007' "Installing $KERNELVERSION Kernel"
echo "${cyan}Installing $KERNELVERSION Kernel"
echo " "
echo "${cyan}Writing by 19cam92@xda"
echo "Script version 1.0.0${reset}"

echo " "
echo "${red}!!!!          THIS SCRIPT NEEDS ROOT         !!!!${reset}"
echo "${red}!!!! PLEASE ENTER YOUR PASSWORD WHEN PROMTED !!!!${reset}"
echo " "
sudo whoami

# Installs Linux Kernel
echo " "
echo -n "${yellow}Installing Linux Kernel $KERNELVERSION (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    wget -c http://kernel.ubuntu.com/~kernel-ppa/mainline/$KERNELVERSION/$FILE1
    wget -c http://kernel.ubuntu.com/~kernel-ppa/mainline/$KERNELVERSION/$FILE2
    wget -c http://kernel.ubuntu.com/~kernel-ppa/mainline/$KERNELVERSION/$FILE3
    wget -c http://kernel.ubuntu.com/~kernel-ppa/mainline/$KERNELVERSION/$FILE4
    sudo dpkg -i *.deb
    rm -f $FILE1
    rm -f $FILE2
    rm -f $FILE3
    rm -f $FILE4
else
    echo "Skipping Linux Kernel 4.19.4"
fi
