#!/bin/bash

# Variables for Google Drive links
COWRIE_DEB_LINK="https://drive.google.com/drive/folders/1ywzCpZFOJCoNHtMN4kzRB3kwQXbyLLGa?usp=sharing"
SURICATA_DEB_LINK="https://drive.google.com/drive/folders/1ywzCpZFOJCoNHtMN4kzRB3kwQXbyLLGa?usp=sharing"

# Download the .deb files
wget -O cowrie.deb $COWRIE_DEB_LINK
wget -O suricata-package.deb $SURICATA_DEB_LINK

# Install the .deb files
sudo dpkg -i cowrie.deb
sudo dpkg -i suricata-package.deb

# Fix dependencies if needed
sudo apt-get install -f

# Restart services
sudo systemctl restart cowrie
sudo systemctl restart suricata

echo "Installation and setup for Cowrie and Suricata completed."
