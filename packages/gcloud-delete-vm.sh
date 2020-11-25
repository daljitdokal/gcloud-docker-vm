#!/bin/bash

# ====================================================================
# AUTHOR: Daljit Singh
# EMAIL: daljit.dokal@yahoo.co.nz
# CREATED: 2020-11-25
# DESCRIPTION: Delete gcloud VM on demand
# - $1 = Name of VM instance
# ====================================================================

# Delete VM
echo "Stoping VM.."
gcloud compute instances stop $1

echo "Deleting VM.."
echo "Y" | gcloud compute instances delete $1
