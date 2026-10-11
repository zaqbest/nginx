#!/bin/sh
set -e

CERT_PATH=$1
# 从 GitHub 拉取证书文件（替换成你的实际仓库地址）
# 如果仓库是私有的，需要配置 GitHub Token 或 SSH Key
wget -qO ${CERT_PATH}/server.crt "https://raw.githubusercontent.com/zaqcorp/certificates/refs/heads/main/letsencrypt/zaqbest.com/server.crt"
wget -qO ${CERT_PATH}/server.key "https://raw.githubusercontent.com/zaqcorp/certificates/refs/heads/main/letsencrypt/zaqbest.com/server.key"
wget -qO ${CERT_PATH}/ca.crt "https://raw.githubusercontent.com/zaqcorp/certificates/refs/heads/main/letsencrypt/zaqbest.com/ca/public-ca.crt"

echo "Certificates pulled successfully."
