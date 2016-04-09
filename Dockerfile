# Test Yocto QT5/Mono docker image
FROM dynamicdevices/qt5-x11-image-raspberrypi2:20160409145330
MAINTAINER Alex J Lennon <ajlennon@dynamicdevices.co.uk>

# Configure xserver input
ADD 10-input.conf /etc/X11/xorg.conf.d/10-input.conf

# Modify matchbox session configuration to hide it
ADD session /etc/matchbox/session

# Run
ADD run.sh /
ADD looper.sh /

CMD ["/bin/bash", "-c", "/run.sh"]
