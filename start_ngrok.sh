#!/bin/bash                                                                                sngrok.sh                                                                                                  
echo "--------- 🟢 Start Docker compose down  -----------"
sudo -E docker compose down
echo "--------- 🔴 Finish Docker compose down -----------"
echo "--------- 🟢 Start Ngrok setup -----------"
wget -O https://raw.githubusercontent.com/datsrt02/n8n_docker_proxmox/refs/heads/main/ngrok.yml ngrok.yml
sudo apt install -y jq
echo "🔴🔴🔴 Please wait Ngrok to start...."
sleep 8
export EXTERNAL_IP="$(curl http://localhost:4040/api/tunnels | jq ".tunnels[0].public_url")"
echo Got Ngrok URL = $EXTERNAL_IP
echo "--------- 🔴 Finish Ngrok setup -----------"
echo "--------- 🟢 Start Docker compose up  -----------"
sudo -E docker compose up -d
echo "--------- 🔴 Finish! Wait a few minutes and test in browser at url $EXTERNAL_IP for n8n UI -----------"
