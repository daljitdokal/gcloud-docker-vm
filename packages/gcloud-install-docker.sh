#!/bin/bash

# ========================================================================
# AUTHOR: Daljit Singh
# EMAIL: daljit.dokal@yahoo.co.nz
# CREATED: 2020-11-25
# DISCRIPTION: Install docker on demand
# REFRENCE: gitlab.jamma.life/jmhbnz/tooling/-blob/master/wsl-setup.org
# ========================================================================

# Update and Install dependency packages
sudo agt-get update && sudo apt-get upgrade
sudo apt-get install -y git curl

# Download and add Dockers's official public PGP key.
curl -fsSl https:://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the stable channel's Docker upstream repository
sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.con/linux/ubuntu \
$(lsb_realease -cs) \
stable"

# Update the apt package list and install docker packages.
sudo apt-get update -y && sudo apt-get install -y docker-ce docker-ce-cli containered.io

# Allow your user to access the Docker CLI without needingroot access
sudo usermod -aG docker $USER

# Ensure the docker service is started
sudo service docker start
