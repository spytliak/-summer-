#!/usr/bin/env bash
INTRO="Configuration server"
RELEASE="cat /etc/*release | head -1"
KERNEL="uname -r"
UPTIME="uptime -p | \n last -x | grep shutdown | head -1"
REBOOT="last -x | grep shutdown | head -1"
USERS="w"
INFO_CPU="grep -i -E '(name|mh|si)' /proc/cpuinfo"
INFO_RAM="free -l -h"
HDD="lsblk | df -hlT"
LAN="ip a"
ROUTE="route -n"
ERRORS="journalctl -b -p err | head -10"
FAILED="systemctl list-units --type service --state failed"

echo ===$INTRO $HOSTNAME====
for info in  "RELEASE $RELEASE" "KERNEL $KERNEL" "UPTIME and last Shutdown $UPTIME" "Last Reboot $REBOOT" "USERS $USERS" "Proc $INFO_CPU" "RAM $INFO_RAM" "Disk $HDD" "Route $ROUTE" "ERRORS $ERRORS" "FAILED $FAILED" ; do
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
