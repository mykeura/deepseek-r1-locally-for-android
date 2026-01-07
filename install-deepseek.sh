#!/bin/bash

# ===============================================
# | Name: Install Deepseek R1
# | Author: Miguel Euraque
# | Date: 2025-01-30
# | Version: 1.0.1
# | Description: Automated installation script for Deepseek R1 on Android
# | Copyright: MIT License.
# ===============================================

# Update Termux
pkg update -y

# Install proot-distro
pkg install -y proot-distro

# Install Arch Linux
yes | proot-distro install archlinux

# Enter Arch Linux and execute configuration
proot-distro login archlinux << 'EOF'

# Update Arch Linux packages
pacman -Syu --noconfirm

# Install Ollama
curl -fsSL https://ollama.com/install.sh | sh

# Start Ollama server
ollama serve > /dev/null 2>&1 &

# Wait for server to be ready
while ! curl -s http://localhost:11434/api/version > /dev/null; do
    sleep 1
done

# Run the model
ollama run deepseek-r1:1.5b
EOF
