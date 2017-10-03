#!/bin/bash -x

dir=build_scripts
pkg=forwardhttp2https

cd "$(dirname "$0")"

# create fresh build dir
rm -rf build
mkdir -p build/$pkg

# cd to project root
cd ..

rsync -av *conf *yml Dockerfile .env $dir/build/$pkg/

cd $dir

cp -r systemd build/$pkg