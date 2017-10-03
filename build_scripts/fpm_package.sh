#!/bin/bash -x

if [ -z ${1} ]; then
	echo "Provide the version to build as, followed by [ENTER]:"

	read version
else
	version=$1
fi

install_prefix=/usr/local/bin/


cd "$(dirname "$0")"
cd build 

################################################
#
#		VARS
#
################################################

pkg=forwardhttp2https
arch=noarch
 
################################################
#
#		UBUNTU 16.04
#
################################################

dist=ubuntu16.04

fpm -f -p ${pkg}_${version}.${dist}_${arch}.deb \
-n $pkg \
-t deb \
-v $version \
-a $arch \
 --after-install $pkg/systemd/install.sh \
 --pre-uninstall $pkg/systemd/uninstall.sh \
 -s dir \
 --deb-no-default-config-files \
 --prefix $install_prefix  \
$pkg
 
exit 

################################################
#
#		FEDORA
#
################################################

dist=fedora
fpm -f -p ${pkg}_${version}.${dist}_${arch}.rpm \
-n $pkg \
-t rpm \
-v $version \
-a $arch \
-d python-pip \
-d lsof \
-d sysstat \
 --after-install $pkg/systemd/install.sh \
 --pre-uninstall $pkg/systemd/uninstall.sh \
 -s dir \
 --deb-no-default-config-files \
 --prefix $install_prefix \
$pkg



