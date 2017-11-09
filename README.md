# Forward http 2 https

This is a docker compose with a minimal nginx installed that forwards incoming http requests to https

memory footprint : 2mb  =)

 vi .env

```
COMPOSE_PROJECT_NAME=forwardhttp2https
NGINX_PORT=8086
```

# Installing

__Make sure that on your target system you have docker (17.06 or newer) and docker-compose (1.16 or newer)__

``` 
dpkg -i forwardhttp2https_*.ubuntu16.04_noarch.deb
```


# check that it's running

```
systemctl status forwardhttp2https.service 
```

```
● forwardhttp2https.service - Forwards all incoming http connections on port 8086 to https:443
   Loaded: loaded (/etc/systemd/system/forwardhttp2https.service; enabled; vendor preset: enabled)
   Active: deactivating (stop)
  Process: 4053 ExecStart=/usr/local/bin/docker-compose up -d (code=exited, status=0/SUCCESS)
  Control: 4253 (docker-compose)
```

 netstat


```
netstat -ntlp | grep 8086
tcp6       0      0 :::8086                 :::*                    LISTEN      1715/docker-proxy
```

visit your server on port 8086 and you'll be 301'd to https