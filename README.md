# bash-netscanner

A simple Bash script that automates basic network scans; including host discorvery (Ping) scan, full TCP port scans, and OS/service version detection. Ideal for beginners learning network reconnaissance and Bash scripting.

## Features

- Ping sweep to check if the host is alive
- Full TCP port scan (`nmap -p-`)
- OS and service version detection (`nmap -A`)
- Saves output to `results/<target IP or Domain>_scan.txt`
- Automatically creates a `results/` folder to organize scans

## Usage

### Give execution permission (only once needed)
```bash
chmod +x scan_script.sh
```

### Run the script
```bash
./scan_script.sh
