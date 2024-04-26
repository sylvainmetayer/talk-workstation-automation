#!/usr/bin/env bash

ansible-vault encrypt --vault-password-file code/password_file --output code/secret_data.txt < code/public_data.txt

qrencode https://app.voxxr.in/events/devoxxuk24/rate-talk/11170 -o images/openfeedback.svg -t SVG -l H -m 2
qrencode https://workstation-automation.talks.sylvain.dev/devoxxuk2024 -o images/slides_link.svg -t SVG -l H -m 2