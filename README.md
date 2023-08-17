# realvnc-server-aarch64-ubuntu
RealVNC Server ARM64 for Ubuntu ARM 64bit running on a Raspberry Pi.

RealVNC Server Version: 7.6.0

This repository is for installing RealVNC Server ARM64 edition on Ubuntu 22.04+ ARM64 (aarch64) for your Raspberry Pi device. Has been tested using a Pi4 with 8gb RAM.

INSTALLATION::

```**Works on Xorg session only!  Logging in using a Wayland session will not work so make sure you login to Ubuntu using Xorg and not Wayland!**```

On many Debian based distro's, tightvncserver is installed by default.  This needs to be removed before installing RealVNC Server:
```
$ sudo apt remove tightvncserver
```
To install, either download the latest binary and install using your package manager or via the terminal with dpkg:

```
$ wget https://github.com/azalinux/realvnc-server-aarch64-ubuntu/releases/download/v7.6.0/realvnc-server-arm64-ubuntu-v7.6.0.deb
$ sudo dpkg -i realvnc-server-arm64-ubuntu-v7.6.0.deb
```

or clone the git respository and use the included setup script:
```
$ sudo apt install git                           
$ git clone https://github.com/azalinux/realvnc-server-aarch64-ubuntu
$ chmod +x setup.sh
$ ./setup.sh
```
This script will correctly place the required shared library files needed by RealVNC Server and the script will also enable and start the RealVNC Server systemd service so that it is enabled and started by default.

No activation key is needed if using on a Raspberry Pi device. ** This is intended for Personal Use only! **

Please note - This free Raspberry Pi edition of RealVnc Server will let clients connect via TCP direct mode rather than UDP direct mode. You need an Enterprise License to connect via UDP!
