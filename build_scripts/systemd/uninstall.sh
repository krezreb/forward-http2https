#!/bin/bash 

INSTALLDIR=/usr/local/bin/
PKG=forwardhttp2https

cd $INSTALLDIR

systemctl stop ${PKG}.service
systemctl disable ${PKG}.service

rm -f /etc/systemd/system/${PKG}.service
rm -rf ${PKG}/*

systemctl daemon-reload