# n8n_docker_proxmox
Tạo server n8n và ngrok trên docker Proxmox

**Các bước cài đặt**

B1: Cài đặt server và tải n8n
curl -L https://raw.githubusercontent.com/datsrt02/n8n_docker_proxmox/refs/heads/main/install.sh | sh

B2: Chạy n8n và ngrok với docker
sh <(curl -L https://raw.githubusercontent.com/datsrt02/n8n/refs/heads/main/start_with_ngrok.sh)
