#!/bin/bash

subnet=`ip -o -f inet addr show  | awk '/scope global/ {print $4}'`
echo $subnet
sudo nmap $subnet -n -sP > nmap_dump.txt
cat nmap_dump.txt | grep report | awk '{print $5}' > log_ip.txt
cat nmap_dump.txt | grep MAC | awk '{print $3}' > log_mac.txt
paste -d "," log_ip.txt log_mac.txt > log_all.txt


