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


[Docker]:https://chrome.google.com
