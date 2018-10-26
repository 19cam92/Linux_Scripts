#!/bin/bash

printf '\033]2;%s\007' "Ubuntu Cleaner"

echo "Installing Ubuntu Cleaner"
sudo apt install software-properties-common
sudo add-apt-repository ppa:gerardpuig/ppa
sudo apt update
sudo apt install ubuntu-cleaner
echo "Done!!!"
read
