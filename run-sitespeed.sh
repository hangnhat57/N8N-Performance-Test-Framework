#!/bin/bash
url=$1
args=$2
if [ -z "$args"]
  then
    echo "Start execute sitespeed test for ${url} with no agruments!"
    docker-compose run --rm sitespeed.io --config=./config.json ${url}
  else
    echo "Start execute sitespeed test for ${url} with agruments: ${args}"
    docker-compose run --rm sitespeed.io --config=./config.json ${url} ${args}
fi
