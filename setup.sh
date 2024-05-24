#!/bin/bash

sudo dpkg -i VNC-Server-7.11.0-Linux-ARM64.deb

sudo systemctl enable --now vncserver-x11-serviced 
