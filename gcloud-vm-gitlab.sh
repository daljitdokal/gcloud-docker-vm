#!/bin/bash

# =============================================================================
# AUTHOR: Daljit Singh
# EMAIL: daljit.dokal@yahoo.co.nz
# CREATED: 2020-11-25
# DISCRIPTION: Create new glcoud VM, SSH into new insatnce and Install Docker
# =============================================================================

# Create new VM
echo "Creating new VM..."
sh ./packages/gcloud-create-vm.sh gitlab-playground-20201111 gitlab-playground

# Install Docker
# echo "Installing docker...."
# sh ./packages/gcloud-install-docker.sh

# echo "Execution completed!"
