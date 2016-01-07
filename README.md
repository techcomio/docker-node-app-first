## docker-node-app-first
Node.js app on Ubuntu using docker

### Installation

1. Install [Docker]

2. Clone source.
```
$ git clone https://github.com/techcomio/docker-node-app-first.git
$ cd docker-node-app-first
```

### Build
```
docker build -t <your username>/node-app-first .
```

### Start
```
docker run -p 49160:8080 -d <your username>/node-app-first
docker ps
docker logs <container id>
```

```
$ docker-machine ip default
$ 192.168.99.100
```
Open link [192.168.99.100:49160](http://192.168.99.100:49160)

When you're ready to stop your container, simply run:
```
$ docker stop <container id>
```
You can also start and restart it in the same way
```
$ docker start <container id>
$ docker restart <container id>
```
### Update source.
change app.js

1. Build
```
docker build -t <your username>/node-app-first .
```
2. Remove <CONTAINER ID>
```
docker kill `docker ps -q`
```
3. Start
```
docker run -p 49160:8080 -d <your username>/node-app-first
```


[Docker]:https://chrome.google.com
