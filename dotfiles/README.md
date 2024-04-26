# Démo dotfiles

Recorded demo

```shell
git clone https://github.com/sylvainmetayer/talk-workstation-automation.git && cd talk-workstation-automation/dotfiles/ && ./scripts/bootstrap-demo.sh
```

## demo

```shell
git clone https://github.com/sylvainmetayer/talk-workstation-automation.git && cd talk-workstation-automation/dotfiles/ && ./scripts/bootstrap.sh

newgrp docker
docker container run hello-world

/opt/toolbox/jetbrains-toolbox &
code $HOME/talk-workstation-automation/dotfiles

# ctrl = // zoom in # ctrl - // zoom out # color theme => light+

# // structure / playbook / roles
# playbooks/personal/main.yaml
# playbooks/personal/locals.yaml
# roles/commons/tasks/main.yml
# inventory.yml

# // usage
# scripts/bootstrap.sh
# requirements.txt
# requirements.yml

# // packages
# roles/fedora_dependencies/tasks/main.yaml
# roles/fedora_dependencies/tasks/packages.yaml
# roles/fedora_dependencies/defaults/main.yaml

# // symlink
# roles/commons/tasks/main.yml
# gitignore rust // which gitignore
# roles/commons/files/.bashrc.d/gitignore.sh

guake
ls -ail ~
cat ~/.gitconfig # template
cat ~/.vimrc # symlink

# playbooks/personal/main.yaml
# playbooks/personal/secret_data.txt
cat ~/secret_data.txt
```

## Initial Setup

- `dnf install git python3-pip`
- `git clone https://github.com/sylvainmetayer/talk-workstation-automation`
- `./scripts/bootstrap.sh` Will install dependencies and start personal playbook with the sudo password on the demo VM

## Usage

- `ANSIBLE_VAULT_PASSWORD_FILE=~/.ansible_vault.txt ansible-playbook playbooks/personal/main.yaml -K`

- view file : `ANSIBLE_VAULT_PASSWORD_FILE=~/.ansible_vault.txt ansible-vault view secret_data.txt`
- edit file : `ANSIBLE_VAULT_PASSWORD_FILE=~/.ansible_vault.txt ansible-vault edit secret_data.txt`
- encrypt file : `ANSIBLE_VAULT_PASSWORD_FILE=~/.ansible_vault.txt ansible-vault encrypt secret_data.txt`
- decrypt file: `ANSIBLE_VAULT_PASSWORD_FILE=~/.ansible_vault.txt ansible-vault decrypt secret_data.txt`

Password is `sylvain`
