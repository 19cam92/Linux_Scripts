#!/bin/bash

printf '\033]2;%s\007' "Checking for updates"

echo "Checking for updates"
sudo apt-get update
echo ""
echo ""
sudo apt-get install
echo ""
echo ""
echo "DONE"
read
