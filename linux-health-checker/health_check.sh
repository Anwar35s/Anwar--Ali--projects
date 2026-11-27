#!/bin/bash 

echo " ====System health report==== "

echo " System information"
uname -a

echo " Date and Time "
date

echo " Disk Usage "
df -h

echo " Memory Usage"
free -h 

echo " Hostname "
hostname 

echo " system uptime "
uptime

echo " CPU usage "
top -bn1 | grep "Cpu(s)"

echo " Top five processes by CPU usage "
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
    


    echo "===== Disk Usage Alert ====="

disk_usage=$(df -h /workspace | awk 'NR==2 {print $5}' | tr -d '%')

 if [ "$disk_usage" -gt 80 ]; then
    echo "WARNING: Disk usage is too high!"
else
    echo "Disk usage is healthy."
fi