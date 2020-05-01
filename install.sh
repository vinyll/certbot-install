#!/bin/bash

ROOT=~/.certbot-src

git clone https://github.com/certbot/certbot $ROOT
cd $ROOT
python3 tools/venv3.py
sudo ln -s $ROOT/venv3/bin/certbot /usr/local/bin/
