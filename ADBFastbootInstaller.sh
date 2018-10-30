#!/bin/bash

printf '\033]2;%s\007' "Installing ADB/Fastboot"

echo "Installing ADB/Fastboot"
sudo apt install adb
sudo apt install fastboot
echo "Done!"
read
