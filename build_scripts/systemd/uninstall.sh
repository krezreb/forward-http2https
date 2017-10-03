#!/bin/bash 

INSTALLDIR=/usr/local/bin/
PKG=forwardhttp2https

cd $INSTALLDIR

systemctl disable ${PKG}.service
systemctl stop ${PKG}.service

unlink /etc/systemd/system/${PKG}.service
rm -rf ${PKG}/*