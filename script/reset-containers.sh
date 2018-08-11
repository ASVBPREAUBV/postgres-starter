#!/usr/bin/env bash
CONTAINER_NAMES=(postgrest-starter_swaggergui_1 postgrest-starter_api_1 postgrest-starter_db_1)
for i in "${CONTAINER_NAMES[@]}"
do
	#echo "$i"
    CONTAINER_ID=$(docker ps -aqf "name=$i")
    echo "$CONTAINER_ID"
    docker rm -f $CONTAINER_ID
done

docker-compose up