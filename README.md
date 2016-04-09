# ResinYoctoQT5Rpi2

Example Resin.io Docker configuration for running an x-server based UI with QT5 support on the Raspberry Pi v2

The docker file references an image on he Docker Hub which is built from Yocto Poky Jethro, meta-raspberrypi and meta-rpi

The image target is qt5-x11-image. 

For build details see http://www.jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html

This provides (non-accelerated) support for Qt5 apps on X11.

Minor changes are made in the docker file to support running the x-server within the Docker container.

To deploy via Resin.io:

- create an app
- add the git remote given in the top right of the app to this repo
- push the repo up to the Resin.io app repo
- download and install the Resin.io OS image on a uSD card and boot the RPIv2
- the RPIv2 should then connect and download the QT5 image
- when the app starts running the x-server will start and a 'qcolorcheck' application display

Known Issues: 

- x-server doesn't start after a device reboot
