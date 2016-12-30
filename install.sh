#!/bin/bash

# Disallow root access
sudo sed -i 's|^[#]*PermitRootLogin .*|PermitRootLogin no|' /etc/ssh/sshd_config

# Disallow password authentication
sudo sed -i 's|^[#]*PasswordAuthentication .*|PasswordAuthentication no|' /etc/ssh/sshd_config

# Restart OpenSSH daemon
sudo systemctl restart sshd
