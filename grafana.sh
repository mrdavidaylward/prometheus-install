#!/bin/bash

# Download grafana
wget https://dl.grafana.com/oss/release/grafana_6.7.3_armhf.deb

# Install grafana
sudo apt-get install -y adduser libfontconfig1

sudo dpkg -i grafana_6.7.3_armhf.deb

# systemd
sudo systemctl daemon-reload
sudo systemctl enable grafana-server
sudo systemctl start grafana-server

# Installation cleanup
rm grafana_6.7.3_armhf.deb
