#!/bin/bash

printf '\033]2;%s\007' "Turning off SWAP"

echo "Turning off SWAP"
sudo swapoff -a
echo "DONE"
read
