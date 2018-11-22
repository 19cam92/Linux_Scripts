#!/bin/bash

printf '\033]2;%s\007' "Resetting SWAP"

echo "Turning off SWAP"
sudo swapoff -a

echo "Turning on SWAP"
sudo swapon -a
echo "Done!!!"
read
