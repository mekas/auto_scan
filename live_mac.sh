#!/bin/bash

subnet=`ip -o -f inet addr show  | awk '/scope global/ {print $4}'`
echo $subnet
sudo nmap $subnet -n -sP | grep MAC | awk '{print $3}' > log_mac.txt
