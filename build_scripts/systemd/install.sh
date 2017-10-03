#!/bin/bash 

INSTALLDIR=/usr/local/bin/
PKG=forwardhttp2https

ln -s $INSTALLDIR/$PKG/systemd/forwardhttp2https.service /etc/systemd/system/forwardhttp2https.service
sudo chmod 644 /etc/systemd/system/forwardhttp2https.service
systemctl enable forwardhttp2https.service
systemctl start forwardhttp2https.service
