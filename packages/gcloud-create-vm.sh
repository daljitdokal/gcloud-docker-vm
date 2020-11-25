#!/bin/bash

# ====================================================================
# AUTHOR: Daljit Singh
# EMAIL: daljit.dokal@yahoo.co.nz
# CREATED: 2020-11-18
# DESCRIPTION: Create new VM and SSH into new instance
# - Zone = australia-southeast1-a
# - $1 = Name of the project
# - $2 = Name of new VM instance
# ====================================================================

# Create new instance under the project
gcloud config set project $1
gcloud config set compute/zone australia-southeast1-a
gcloud compute instances create $2 --image="centos-8-v20201112" --image-project="centos-cloud"

gcloud compute ssh $2 --ssh-key-file ~/.ssh/$USER -- echo "Hellp World!"

# Move file to new instance
# sleep 2
# gcloud compute scp gcloud-install-docker.sh $2:/tmp --ssh-key-file ~/.ssh/$USER --strict-host-key-checking=no

# SSH into new instance
sleep 2
gcloud compute ssh $2 --ssh-key-file ~/.ssh/$USER --command 'bash -s' < gcloud-install-docker.sh
