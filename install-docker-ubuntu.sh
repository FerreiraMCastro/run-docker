#!bin/bash
# Script para instalação do Docker no Ubuntu/Debian
# Autor: Márcia Ferreira
# Data: 30/05/2025

echo "Atualizando pacotes..."
sudo apt update -y
sudo apt upgrade -y

echo "Instalando dependências..."
sudo apt install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

echo "Adicionando chave GCP oficial do Docker..."
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "Configurando repositório Docker..."
echo \
    "deb [arch=$(dpkg --print-architecture) \
    signed-by=/etc/apt/keyrings/docker.gpg] \
    https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "Atualizando novamente..."
sudo apt update -y

echo "Instalando Docker Engine, CLI e containerd..."
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "Adicionando o usuário atual ao grupo docker..."
sudo usermod -aG docker $usermod

echo "Ativando e iniciando o serviço Docker..."
sudo systemctl enable docker
sudo systemctl start docker

echo "Instalação do Docker concluída!"
echo "Saia da sessão e entre novamente para que a permissão do grupo docker seja aplicada. "