#!/bin/bash

ROOT=~/.certbot-src

# Remove symbolic link and source folder.
sudo rm /usr/local/bin/certbot
rm -fr $ROOT

echo "Source based CertBot installation removed."
