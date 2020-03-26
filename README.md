# Forward http 2 https

This is a docker image with a minimal nginx that forwards incoming http requests to https.  Nginx is designed to have minimal memory and CPU footprint and is rate limited to 5 requests per client per second. 

# Building

```
cd src
docker build . -t forwardhttp2https
```

Or just use the dockerhub image

`docker pull jbeeson/forwardhttp2https`

# Running

Docker compose

`docker-compose up`

Docker with local build

`docker run -p 80:80 -d --restart always  forwardhttp2https`

Or, if using dockerhub

`docker run -p 80:80 -d --restart always  jbeeson/forwardhttp2https`