#!/bin/bash

docker-compose build --build-arg LOCAL_USER_ID="$(id -u "$USER")" --build-arg LOCAL_GROUP_ID="$(id -g "$USER")"
