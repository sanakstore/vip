#!/bin/bash
# Edition : Stable Edition V3.0
# Auther  : SANAK STORE Project
# (C) Copyright 2023
# =========================================
MYIP=$(wget -qO- ipinfo.io/ip);
clear
apt install jq curl -y >/dev/null 2>&1
read -rp "Sub Domain (Contoh: sanak): " -e sub
DOMAIN=tarap-kuhing-tunneling.my.id
SUB_DOMAIN=${sub}.tarap-kuhing-tunneling.my.id
CF_ID=merahjambo@gmail.com
CF_KEY=86431de017f7bf317c3960061da2f87c8effb
set -euo pipefail
IP=$(wget -qO- ifconfig.me/ip);
echo "Updating DNS for ${SUB_DOMAIN}..."
ZONE=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones?name=${DOMAIN}&status=active" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" | jq -r .result[0].id)

RECORD=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records?name=${SUB_DOMAIN}" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" | jq -r .result[0].id)

if [[ "${#RECORD}" -le 10 ]]; then
     RECORD=$(curl -sLX POST "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'${SUB_DOMAIN}'","content":"'${IP}'","ttl":120,"proxied":false}' | jq -r .result.id)
fi

RESULT=$(curl -sLX PUT "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records/${RECORD}" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'${SUB_DOMAIN}'","content":"'${IP}'","ttl":120,"proxied":false}')
echo "Host : $SUB_DOMAIN"
echo "IP=" >> /var/lib/sanakstore/ipvps.conf
echo $SUB_DOMAIN > /etc/xray/domain
echo $SUB_DOMAIN > /root/domain
rm -f /root/cf.sh
