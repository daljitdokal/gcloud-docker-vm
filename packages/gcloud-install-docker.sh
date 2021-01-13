#!/bin/bash

# ========================================================================
# AUTHOR: Daljit Singh
# EMAIL: daljit.dokal@yahoo.co.nz
# CREATED: 2020-11-25
# DISCRIPTION: Install docker on demand
# REFRENCE: gitlab.jamma.life/jmhbnz/tooling/-blob/master/wsl-setup.org
# ========================================================================

#################
# INSTALL DOCKER
#################
# Set up the repo
sudo yum install -y yum-utils

sudo yum-config-manager \
  --add-repo \
  https://download.docker.com/linux/centos/docker-ce.repo

# Install docker engine
echo "y" | echo "y" | sudo yum install docker-ce docker-ce-cli containerd.io

# Ensure the docker service is started
sudo systemctl start docker

################
# INSTALL GITLAB
################
export GITLAB_HOME=/srv/gitlab


sudo docker run --detach \
     --hostname gitlab.example.com \
     --publish 443:443 --publish 80:80 --publish 22:22 \
     --name gitlab \
     --restart always \
     --volume $GITLAB_HOME/config:/etc/gitlab \
     --volume $GITLAB_HOME/logs:/var/log/gitlab \
     --volume $GITLAB_HOME/data:/var/opt/gitlab \
       gitlab/gitlab-ce:latest
