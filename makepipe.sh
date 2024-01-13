#!/bin/bash

PIPEFILE="/mnt/wed4/system/appdata/script-server/pipes/pipe"

if [ -e "$PIPEFILE" ]; then
    rm $PIPEFILE
    mkfifo $PIPEFILE
else
    mkfifo $PIPEFILE
fi

while true
    do eval "$(cat $PIPEFILE)"
done

