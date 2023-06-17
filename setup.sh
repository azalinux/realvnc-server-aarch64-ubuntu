#!/bin/bash

#sudo ln -s /usr/lib/aarch64-linux-gnu/libbcm_host.so /usr/lib/libbcm_host.so.0
#sudo ln -s /usr/lib/aarch64-linux-gnu/libvchiq_arm.so /usr/lib/libvchiq_arm.so.0
#sudo ln -s /usr/lib/aarch64-linux-gnu/libvcos.so /usr/lib/libvcos.so.0

if [[ -e /usr/lib/libbcm_host.so.0 && -e /usr/lib/libvchiq_arm.so.0 && -e /usr/lib/libvcos.so.0 ]]; then
    echo "All required files exist. Continuing..."
    # Add your desired commands here to be executed if the files exist
else
    echo "One or more files are missing. Creating symbolic links..."
    sudo ln -s /usr/lib/aarch64-linux-gnu/libbcm_host.so /usr/lib/libbcm_host.so.0
    sudo ln -s /usr/lib/aarch64-linux-gnu/libvchiq_arm.so /usr/lib/libvchiq_arm.so.0
    sudo ln -s /usr/lib/aarch64-linux-gnu/libvcos.so /usr/lib/libvcos.so.0
fi


sudo dpkg -i VNC-Server-7.5.1-Linux-ARM64.deb

sudo systemctl enable --now vncserver-x11-serviced 
