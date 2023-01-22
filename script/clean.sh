#!/bin/bash

if [[ "`docker ps -a -q`" != "" ]]; then
    docker rm `docker ps -a -q`
fi

if [[ "`docker volume ls -q`" == *r0uei_db-store* ]]; then
    docker volume rm `docker volume ls -q`
fi

echo "0" > ./app/config/.r0uei_database_exist
