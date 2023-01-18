#!/bin/bash

docker rm `docker ps -a -q`

if [[ "`docker volume ls -q`" == *r0uei_db-store* ]]; then
    docker volume rm r0uei_db-store
fi

echo "0" > ./app/config/.r0uei_database_exist
