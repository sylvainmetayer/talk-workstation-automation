#!/usr/bin/env bash

echo "Silent mode is on?"
echo "Lance le script clean.sh"
echo "T'as coupé le son ??"
read -r

echo "Battery saver"
#sudo systemctl stop docker.service
#sudo systemctl stop cbagentd.service
#sudo systemctl stop forticlient.service

kubectx -u || true

firefox -P work 'https://asdf.talks.sylvain.dev/'  'http://localhost:8000'
systemctl restart --user xremap
