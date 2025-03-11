#!/bin/bash

VM_NAME="ubu_x86"

# Checking the Lima VM status
if [ -n "$(limactl list $VM_NAME | grep 'Running')" ]; then
    echo "Shutting down Lima VM: $VM_NAME"
    limactl stop $VM_NAME
else
    echo "Starting Lima VM: $VM_NAME"
    limactl start  $VM_NAME && limactl shell  $VM_NAME
fi
