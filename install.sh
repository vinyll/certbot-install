#!/bin/bash

ROOT=~/.certbot-src

git clone https://github.com/certbot/certbot $ROOT
cd $ROOT
sudo apt-get install python3-dev python3-venv gcc libaugeas0 libssl-dev libffi-dev ca-certificates openssl
python3 tools/venv3.py
sudo ln -s $ROOT/venv3/bin/certbot /usr/local/bin/
