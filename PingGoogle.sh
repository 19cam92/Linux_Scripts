#!/bin/bash

printf '\033]2;%s\007' "Ping Google"

echo "Pinging Goolge"
ping www.google.com.au
read
