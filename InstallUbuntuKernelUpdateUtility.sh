#!/bin/bash

printf '\033]2;%s\007' "Ubuntu Kernel Update Utility"

echo "Installing Ubuntu Kernel Update Utility"
sudo add-apt-repository ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install ukuu
echo "Done!!!"
read
