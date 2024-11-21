#!/bin/bash
for ip in $(awk '{print $1}' /etc/hosts); do
   if ! ping -c 1 $ip &>/dev/null; then
      echo "$ip is not reachable"
   else
      echo "$ip is reachable"
   fi
done
