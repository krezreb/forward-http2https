# setup build tools
install fpm see https://github.com/jordansissel/fpm/blob/master/docs/installing.rst

# build

./build.sh && ./fpm_package.sh

you can test that it works in a docker instance 

# run container
docker run -it ubuntu /bin/bash

# from host machine copy the deb file to the container
docker cp build/sashimi-collector*.deb <container>:/

# in the container 
cd /
apt-get update
dpkg -i sashimi-collector_*deb
# dpkg is too dumb to install dependencies, it'll say they are unsatified, so you'll have to rerun apt-get with the -f option
apt-get install -f


# now you have sashimi installed in /usr/local/bin 

# run as root
/usr/local/bin/sashimi-setup 
# sets up client authentication with a connection test
# installs pip requirements
# sets up sysstat service
# adds /usr/local/bin to path
# crons sashimi-run to run every minute

# the following are the sashimi commands
sashimi-probe # probes
sashimi-agent # pushes to server

sashimi-run   # does both of the above


conf files stored in /etc/sashimi-collector