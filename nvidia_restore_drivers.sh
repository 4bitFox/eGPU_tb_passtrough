#!/bin/sh

rm /etc/modprobe.d/nvidia-blacklist.conf
# rm /etc/modprobe.d/nouveau-blacklist.conf    # I just keep nouveau blacklisted...

sleep 2

systemctl restart gdm
