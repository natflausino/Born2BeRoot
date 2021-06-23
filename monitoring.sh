#!/bin/bash

rm -rf temp.tmp

{
	echo "\*****************************************************************************/"
	echo "*" "Architecture:" "$(uname -a)"
	echo "*" "CPU physical:" "$(grep 'physical id' /proc/cpuinfo | uniq | wc -l)"
	echo "*" "vCPU:" "$(grep 'processor' /proc/cpuinfo | uniq | wc -l)"

	USED_M=$(free -m | awk 'NR==2 {print $3}')
	TOTAL_M=$(free -m | awk 'NR==2 {print $2}')
	PERCT_M=$(echo "scale=2;100*$USED_M/$TOTAL_M" | bc)
	echo "*" "Memory Usage:" "${USED_M}/${TOTAL_M}MB (${PERCT_M}%)"

	USED_D=$(df -m --total | awk 'END{print $3}')
	TOTAL_D=$(df -h --total | awk 'END{print $2}')
	PERCT_D=$(df -h --total | awk 'END{print $5}')
	echo "*" "Disk Usage:" "${USED_D}/${TOTAL_D} (${PERCT_D})"

	PERCT_CPU=$(mpstat | awk 'NR==4 {printf "%.2f", 100-$NF}')
	echo "*" "CPU load:" "${PERCT_CPU}%"
	echo "*" "Last boot:" "$(who -b | awk '{print $3,$4}')"
	echo "*" "LVM Use:" $(if [ $(/usr/sbin/blkid | grep -c '/dev/mapper') -eq 0 ]; then echo "no"; else echo "yes"; fi)
	echo "*" "Connections TCP:" "$(ss -s | awk '/TCP:/ {print $2}')"
	echo "*" "User log:" "$(who | wc -l)"
	echo "*" "Network:" "IP $(hostname -I | awk '{print $1}')" "($(ifconfig | awk '/ether/ {print $2}'))"
	echo "*" "Sudo:" "$(grep -c 'COMMAND' /var/log/sudo/logs) cmd"
	echo "\*****************************************************************************/"
} >> temp.tmp

wall -n temp.tmp

rm -rf temp.tmp
