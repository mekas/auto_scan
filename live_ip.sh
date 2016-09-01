#!/bin/bash

subnet=`ip -o -f inet addr show  | awk '/scope global/ {print $4}'`
echo $subnet
sudo nmap $subnet -n -sP | grep report | awk '{print $5}' > log_ip.txt
