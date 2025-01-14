#!/bin/sh

echo "Disable suspend becuase of issues... (e.g. action suspend alread in progress)"
systemctl stop nvidia-hibernate.service
systemctl stop nvidia-resume.service
systemctl stop nvidia-suspend.service 
systemctl disable nvidia-hibernate.service
systemctl disable nvidia-resume.service
systemctl disable nvidia-suspend.service 

echo "Blacklisting nouveau..."
cp ./etc/modprobe.d/nouveau-blacklist.conf /etc/modprobe.d/nouveau-blacklist.conf
