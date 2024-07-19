#!/bin/bash

if [ $# -eq 0 ]; then
    >&2 echo "Usage: create-elemental-demo.sh <vm-name> <elemental.iso>"
    exit 1
fi

virt-install --connect qemu:///system --virt-type kvm  --name $1 --memory 16184 --network bridge=br0 --disk pool=images,size=50,sparse=true --graphics vnc --os-variant sle15sp6 --vcpus 2 --boot uefi --tpm emulator --cdrom /var/lib/libvirt/images/$2
