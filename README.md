# Honeypot With WAZUH

This repository provides scripts and instructions for setting up a honeypot using Cowrie and Suricata on one VM, and Wazuh on another VM. Follow the steps below to download, install, and configure the necessary packages.
![image](https://github.com/user-attachments/assets/90361104-e11c-4eea-a76e-9286f9d51daa)

## Installation

### VM 1: Cowrie and Suricata

To install Cowrie and Suricata packages, follow these steps:

1. **Download the installation script:**

   ```sh
   wget https://raw.githubusercontent.com/hello4r1end/Honeypot-With-SIEM/main/install-cowrie-suricata.sh

2. Give execution permissions to the installation script:

  ```sh
chmod +x install-cowrie-suricata.sh
```
3. Run the installation script:
```
./install-cowrie-suricata.sh
```
VM 2: Wazuh
To install the Wazuh package, follow these steps:

1. Download the installation script:
```
wget https://raw.githubusercontent.com/hello4r1end/Honeypot-With-SIEM/main/install-wazuh.sh
```
2. Give execution permissions to the installation script:

```
chmod +x install-wazuh.sh
```
3. Run the installation script:

```
./install-wazuh.sh
```
Configuration
IP Addresses
After installation, you may need to adjust the configuration files for Cowrie, Suricata, and Wazuh to match your network settings. Specifically, check and update the IP addresses in the following files:

Cowrie Configuration: /etc/cowrie/cowrie.cfg
Suricata Configuration: /etc/suricata/suricata.yaml
Wazuh Configuration: /var/ossec/etc/ossec.conf
Restarting Services
After making changes to the configuration files, restart the services to apply the new settings:
```
sudo systemctl restart cowrie
sudo systemctl restart suricata
sudo systemctl restart wazuh-manager
sudo systemctl restart wazuh-agent
```
Google Drive Links
Download the .deb files from the following Google Drive link
```
https://drive.google.com/drive/folders/1ywzCpZFOJCoNHtMN4kzRB3kwQXbyLLGa?usp=sharing
```
Replace COWRIE_FILE_ID, SURICATA_FILE_ID, and WAZUH_FILE_ID with the respective IDs from your Google Drive links.

Troubleshooting
Dependency Issues
If you encounter dependency issues during the installation of the .deb files, run the following command to fix them:
```
sudo apt-get install -f
```
Service Status
To check the status of the services, use the following commands:
```
sudo systemctl status cowrie
sudo systemctl status suricata
sudo systemctl status wazuh-manager
sudo systemctl status wazuh-agent

```
Contribution
If you would like to contribute to this project, feel free to fork the repository, make your changes, and submit a pull request. All contributions are welcome!

License
This project is licensed under the MIT License - see the LICENSE file for details.

This README.md provides comprehensive instructions for setting up and configuring the honeypot with Cowrie, Suricata, and Wazuh. Make sure to replace the placeholders for the Google Drive links with the actual IDs.
