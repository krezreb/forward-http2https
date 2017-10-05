#!/bin/bash 

INSTALLDIR=/usr/local/bin/
PKG=forwardhttp2https

rm -f /etc/systemd/system/forwardhttp2https.service 
cp -f $INSTALLDIR/$PKG/systemd/forwardhttp2https.service /etc/systemd/system/
chmod 644 /etc/systemd/system/forwardhttp2https.service
systemctl enable forwardhttp2https.service
exit 0