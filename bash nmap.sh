#!/bin/bash
#host to be scanned and output to write the result

host = $1
output = $2

#function run nmap using SYN Stealth
fuction runnmap {
nmap -v -sS $host | grep 'open ' > $output
  cat $output
}

#run the function
runnmap
