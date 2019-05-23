#!/usr/bin/env bash

INTRO="Configuration server"
RELEASE="cat /etc/*release | head -1"
KERNEL="uname -r"
UPTIME="uptime -p ; last -x | grep shutdown | head -1"
REBOOT="last -x | grep reboot | head -1"
USERS="w"
INFO_CPU="grep -i -E '(name|mh|si)' /proc/cpuinfo"
INFO_RAM="free -l -h"
HDD="lsblk ; df -hlT"
LAN="ip a"
ROUTE="route -n"
ERRORS="journalctl -b -p err | head -10"
FAILED="systemctl list-units --type service --state failed"
TOP="top -bn1 | grep -E 'Cpu(s)|load|Tasks|Mem|Swap'"
PS="ps axo %mem,cpu,comm,pid,euser | sort -nr | head -n 10"
VMSTAT="vmstat -s"
IOSTATS="iostat -h -x"
echo ===$INTRO $HOSTNAME====
for info in  "RELEASE $RELEASE" "KERNEL $KERNEL" "UPTIME $UPTIME;$REBOOT" "USERS $USERS" "Proc $INFO_CPU" "RAM $INFO_RAM" "Disk $HDD" "Route $ROUTE" "LAN $LAN" "ERRORS $ERRORS" "FAILED $FAILED" "TOP $TOP" "VMSTAT $VMSTAT" "IOSTATS $IOSTATS" "PS $PS" ; do
 set -- $info
 echo
 echo "=====$1====="
 echo
 shift
 eval $@ | while read line ; do
  echo "$line"
  done
 done
exit 0

