#!/bin/bash
sudo apt -y install wget certbot
wget https://github.com/goharbor/harbor/releases/download/v2.8.3/harbor-online-installer-v2.8.3.tgz
tar -xf harbor-online-installer-v2.8.3.tgz
cd harbor
cp harbor.yml.tmpl harbor.yml