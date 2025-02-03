#!/usr/bin/env bash

echo "Silent mode is on?"
echo "T'as coupé le son ?"
echo "T'as tout fermé ?"
read -r

echo "Battery saver"
#sudo systemctl stop docker.service
#sudo systemctl stop cbagentd.service
#sudo systemctl stop forticlient.service

kubectx -u || true

firefox -P work 'https://workstation-automation.talks.sylvain.dev/' 'http://localhost:8000'
systemctl restart --user xremap
