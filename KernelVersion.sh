#!/bin/bash

printf '\033]2;%s\007' "Checking Kernel Version"

echo "Current installed kernel is"
uname -r
read