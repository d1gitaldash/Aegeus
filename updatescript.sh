#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'
echo -e "[+] ${RED}Minivan AEG 1.2 Install Script${NC}"
echo "[+] Downloading Update..."
wget https://www.dropbox.com/s/flafrvia36ahnyx/update1.2.tar.gz?dl=0 >/dev/null
echo "[+] Extracting Update..."
tar -xzf update1.2.tar.gz >/dev/null
echo "[+] Stopping Service..."
systemctl stop Aegeus.service >/dev/null 
echo "[+] Updating Files" 
cp ./update1.2/* /usr/local/bin/
echo "[+] Starting Service" 
systemctl start Aegeus.service >/dev/null
echo "[+] Cleaning Up"
rm -rf ./update1.2* >/dev/null
echo "[*] Updated Masternode to 1.2"
