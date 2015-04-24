#!/bin/bash

printf '\033]2;%s\007' "Checking IP Address"

echo "Current IP Address is"
/sbin/ifconfig
read
