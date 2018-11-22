#!/bin/bash

printf '\033]2;%s\007' "Turing on SWAP"

echo "Turning on SWAP"
sudo swapon -a
echo "Done!!!"
read
