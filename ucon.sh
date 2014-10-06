#!/bin/sh

#Script to quickly update ubuntu and check the requirements for the company. 

echo "Y" | apt-get update 
echo "Y" | apt-get install stress
echo "Y" | apt-get updgrade
echo "Y" | apt-get dist-updgrade

stress -c 8 -m 20 -d 1 -t 600
echo "Stress is Finished" 

echo "######################################"
echo "######################################"
echo "######################################"
echo "######################################"
echo "######################################"

lscpi | grep -i "network" 
xrandr | grep "current" 
free -hg --si | head -2

