### How to run application with docker
##### Note: you should independently install docker and docker-compose
#### Create docker image:
```shell script
$ docker build -t bravo-todo -f docker/Dockerfile .
```
#### Run compose:
```shell script
$ docker-compose -f docker/docker-compose.yml up -d
```
#### Stop compose:
```shell script
$ docker-compose -f docker/docker-compose.yml stop
```
