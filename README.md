### How to run application with docker
##### Note: you should independently install docker and docker-compose use this guide https://docs.docker.com/install/linux/docker-ce/ubuntu/ and https://docs.docker.com/compose/install/
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

#### Simple bash scripts:
###### Note: run all scripts from root folder (./bravotodo)
##### Run:
```shell script
$ run_conrainers.sh
```
##### Stop:
```shell script
$ kill_containers.sh
```

#### How to print status of running containers:
```shell script
$ docker ps
``` 