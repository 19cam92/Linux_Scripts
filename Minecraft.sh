#!/bin/bash

printf '\033]2;%s\007' "Running Minecraft"

echo "Moving to .minecraft"
cd ~/.minecraft
echo ""
echo ""
echo "Removing old logs"
rm *.log
rm *.log.lck
echo ""
echo ""
echo "Starting minecraft"
java -Xmx2048M -jar Minecraft.jar
