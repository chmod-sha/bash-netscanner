#!/bin/bash
echo "Automated Nmap Bash Scanner: Session Started"
read -p "Enter the target IP address or domain: " target
filename="results/${target}_scan.txt"
mkdir -p results
echo "Scanning host: $target"
echo "Scan Results will be saved to $filename"
# Ping Scan
echo "Running Host Discrovery (Ping) Scan..." | tee -a $filename
nmap -sn $target | tee -a $filename
# Port Scan
echo -e "\nRunning Full Port Scan..." | tee -a $filename
nmap -p- $target | tee -a $filename
# OS Detection
echo -e "\nRunning OS Detection and Service Version Scan..." | tee -a $filename
nmap -A $target | tee -a $filename
echo -e "\nScan complete. Results saved to: $filename"

