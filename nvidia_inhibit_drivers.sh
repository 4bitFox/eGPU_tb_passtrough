#!/bin/sh
echo "Stopping GDM..."
systemctl stop gdm

echo "Unloading nvidia kernel mudules..."
modprobe -r nvidia_uvm
modprobe -r nvidia_drm
modprobe -r nvidia_modeset
modprobe -r nvidia

echo "Blacklisting nouveau nvidia kernel modules..."
cp ./etc/modprobe.d/nouveau-blacklist.conf /etc/modprobe.d/nouveau-blacklist.conf
cp ./etc/modprobe.d/nvidia-blacklist.conf /etc/modprobe.d/nvidia-blacklist.conf

sleep 2

echo "Starting GDM..."
systemctl start gdm
