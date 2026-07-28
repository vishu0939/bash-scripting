#!/bin/bash

echo "___________________________________________________________________________"
echo "======================Linux System Monitoring Report======================="
echo "---------------------------------------------------------------------------"

echo "_____________________________________________"
echo "Hostname: "
hostname

echo "_____________________________________________"
echo "System Uptime: $(uptime)"

echo "_____________________________________________"
echo "Memory Usage: $(free -h)"

echo "_____________________________________________"
echo "Disk Usage: $(df -h /)"

echo "_____________________________________________"
echo "Top Processes: "
ps -eo pid,cmd,%cpu --sort=-%cpu | head

echo "_____________________________________________"
echo "Docker Status: "
sudo systemctl status docker | grep -E -i "active| inactive"

echo "_____________________________________________"
echo "Nginx Status: "
sudo systemctl status nginx | grep -E -i "active| inactive"

echo "_____________________________________________"
echo "Kubernetes version: "
kubectl version --client

