#!/bin/bash

printf '\033]2;%s\007' "Heimdall"

echo "Starting Heimdall"
heimdall-frontend
echo "Done!!!"
read
