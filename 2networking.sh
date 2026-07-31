#!/bin/bash

echo "_______________________________________________________________________"
echo "======================= Linux Networking Report ======================="
echo "-----------------------------------------------------------------------"

echo ""
echo "_______________________________________________________________________"
echo "HostName: $(hostname)"

echo "_______________________________________________________________________"
echo "-----------------------Test Internet Connectivity:---------------------"
ping -c 2 google.com

echo "_______________________________________________________________________"
echo "-------------------DNS TroubleShooting/gives ip------------------------"
nslookup google.com | grep -E -i 'Address'

echo "_______________________________________________________________________"
echo "------------Network Statistics//Show listening TCP/UDP ports:----------"
#which process is using port 80
ss -tulnp | grep 80

echo "_______________________________________________________________________"
echo "-----------------Scan Open TCP/UDP Ports/Network Mapper----------------"
nmap -sTU localhost


echo "_______________________________________________________________________"
echo "-------------------------Public IP:------------------------------------" #-s for clean o/p
curl -s ifconfig.me

echo ""
echo "-----------------Check website is up or not/http header:---------------"
curl -I aide-v.xyz

echo ""
echo "---DNS lookup/tcp connection/tls handshake/best for troubleshooting----"
curl -v aide-v.xyz  #verbose o/p

echo ""
echo "_______________________________________________________________________"
echo "-----------------FOR download any file from internet-------------------"
wget https://docs.fileformat.com/pdf/download-pdf/

echo "_______________________________________________________________________"
echo "-------------------CHECK DNS RECORD/target ip--------------------------"
dig aide-v.xyz +short










