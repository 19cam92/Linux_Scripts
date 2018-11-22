#!/bin/bash

printf '\033]2;%s\007' "Heimdall"

echo "Starting Heimdall"
sudo apt install heimdall-flash-frontend
heimdall-frontend
echo "Done!!!"
read
