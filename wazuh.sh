#!/bin/bash

# Variables for Google Drive links
WAZUH_DEB_LINK="https://drive.google.com/drive/folders/1ywzCpZFOJCoNHtMN4kzRB3kwQXbyLLGa?usp=sharing"

# Download the .deb file
wget -O wazuh-package.deb $WAZUH_DEB_LINK

# Install the .deb file
sudo dpkg -i wazuh-package.deb

# Fix dependencies if needed
sudo apt-get install -f

# Restart services
sudo systemctl restart wazuh-manager
sudo systemctl restart wazuh-agent

echo "Installation and setup for Wazuh completed."
