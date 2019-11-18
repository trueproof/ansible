#!/bin/bash

sudo apt install ansible -y
ansible-galaxy install -r requirements.yml
ansible-playbook -K -i hosts.yml install-packages.yml
ansible-playbook -K -i hosts.yml copy-configs.yml
ansible-playbook -K -i hosts.yml install-docker.yml
