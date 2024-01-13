#!/bin/sh

# This is the entry point for the docker images.
# This file is executed when docker run is called.

set -e

DIR="/app/conf/"
if [ -d "$DIR" ]
then
    if [ "$(ls -A $DIR)" ]; then
      echo "$DIR is not Empty"
    else
      echo "Copy defaults to $DIR"
      cp -r /tmp/conf/. /app/conf
    fi
else
    echo "Directory $DIR not found."
fi

DIR="/app/scripts/"
if [ -d "$DIR" ]
then
    if [ "$(ls -A $DIR)" ]; then
      echo "$DIR is not Empty"
    else
      echo "Copy defaults to $DIR"
      cp /tmp/scripts/* /app/scripts/
    fi
else
    echo "Directory $DIR not found."
fi

exec "$@"