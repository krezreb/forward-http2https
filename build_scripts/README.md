# setup build tools
install fpm see https://github.com/jordansissel/fpm/blob/master/docs/installing.rst

# build

./build.sh && ./fpm_package.sh

This poops out a deb file in the build dir

Make sure that on your target system you have docker (17.06 or newer) and docker-compose (1.16 or newer)