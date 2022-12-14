#!/bin/sh

nsenter -t 1 -m -u -n -i /path/on/host/to/run/some_script.sh; exit
