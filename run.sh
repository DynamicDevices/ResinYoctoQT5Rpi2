#!/bin/sh

# Create log folder
mkdir -p /var/volatile/log

# Create d-bus machine ID
dbus-uuidgen > /var/lib/dbus/machine-id

# Start X11
/etc/init.d/xserver-nodm start

# Run a QT app
sleep 5
export DISPLAY=:0
qcolorcheck

# Fallback to loop to ensure resin.io terminal is accessible
/looper.sh
