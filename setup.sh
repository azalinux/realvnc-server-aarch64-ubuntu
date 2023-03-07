#!/bin/bash

sudo ln -s /usr/lib/aarch64-linux-gnu/libbcm_host.so /usr/lib/libbcm_host.so.0
sudo ln -s /usr/lib/aarch64-linux-gnu/libvchiq_arm.so /usr/lib/libvchiq_arm.so.0
sudo ln -s /usr/lib/aarch64-linux-gnu/libvcos.so /usr/lib/libvcos.so.0

sudo dpkg -i VNC-Server-7.0.1-Linux-ARM64.deb

sudo systemctl enable --now vncserver-x11-serviced 
