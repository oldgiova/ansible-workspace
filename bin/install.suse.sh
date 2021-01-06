#!/bin/bash

## Install ansible
echo "INFO - install ansible"
echo -e "\n\n"

which ansible
if [[ $? != 0 ]]; then
    sudo zypper in -y ansible
fi
echo -e "\n\n"

# Check out a copy of this repo
echo "INFO - checking out this repo"
git clone https://github.com/rgiovanardi/ansible-workspace.git \
    /tmp/ansible-repo 2>/dev/null
cd /tmp/ansible-repo && git fetch && git reset --hard origin/master


# Run Ansible Playbook
echo "INFO - Running playbook"
echo -e "\n\n"