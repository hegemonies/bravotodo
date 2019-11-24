#!/bin/bash


network_name="skynet"
name_db_container="db"
name_web_container="web"

docker kill ${name_db_container} ${name_web_container}
docker network rm ${network_name}
