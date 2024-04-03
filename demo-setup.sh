#!/usr/bin/env bash

echo "Silent mode is on?"
echo "Lance le script clean.sh"
read -r

echo "Battery saver"
#sudo systemctl stop docker.service
#sudo systemctl stop cbagentd.service
#sudo systemctl stop forticlient.service

kubectx -u || true

gnome-terminal --window-with-profile=demo-sombre --full-screen --working-directory "$(pwd)/code"
firefox -P work 'https://asdf.talks.sylvain.dev/'  'http://localhost:8000'
