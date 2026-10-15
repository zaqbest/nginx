#!/bin/sh
set -e

REPO_GITHUB_URL_PREFIX=https://raw.githubusercontent.com/zaqcorp/certificates/refs/heads/main
REPO_CNH_URL_PREFIX=https://cnb.cool/zaqbest/devops/certificates/-/git/raw/main

CERT_PATH=$1
REPO_URL_PREFIX=$REPO_CNH_URL_PREFIX
# 从 GitHub 拉取证书文件（替换成你的实际仓库地址）
# 如果仓库是私有的，需要配置 GitHub Token 或 SSH Key
wget -qO ${CERT_PATH}/server.crt "${REPO_URL_PREFIX}/letsencrypt/zaqbest.com/server.crt"
wget -qO ${CERT_PATH}/server.key "${REPO_URL_PREFIX}/letsencrypt/zaqbest.com/server.key"
wget -qO ${CERT_PATH}/ca.crt "${REPO_URL_PREFIX}/letsencrypt/zaqbest.com/ca/public-ca.crt"

echo "Certificates pulled successfully."
