# Test Yocto Mono hello world docker image
FROM dynamicdevices/qt5-x11-image-raspberrypi:20160408152736
MAINTAINER Alex J Lennon <ajlennon@dynamicdevices.co.uk>

# Configure xserver input
ADD 10-input.conf /etc/X11/xorg.conf.d/10-input.conf

# Modify matchbox session configuration to hide it
ADD session /etc/matchbox/session

# Seem to have to create /volatile/log folder for X to start
ADD dummy /var/volatile/log/dummy

# Create d-bus machine ID 
CMD dbus-uuidgen > /var/lib/dbus/machine-id

# Start X11
CMD /etc/init.d/xserver-nodm start

# Loop so we can access terminal
ADD looper.sh /
CMD ["/looper.sh"]

