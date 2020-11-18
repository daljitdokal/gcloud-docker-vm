#!/bin/bash

# Create new VM instance 
# - Project: gitlab-playground
# - Zone: australia-southeast1-a
gcloud config set project gitlab-playground-20201111
gcloud config set compute/zone australia-southeast1-a
gcloud compute instances create $1
sleep 5
gcloud compute ssh gitlab-playground --ssh-key-file ~/.ssh/$USER
