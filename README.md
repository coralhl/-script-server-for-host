# script-server-for-host
Docker image to run Script-server's (https://github.com/bugy/script-server) scripts on host

## Build docker image
The container must be built using the alpine image, in which case the `nsenter` will work as it should.

You need to create a directory `build`, download and unzip the script-server release into it (e.g. https://github.com/bugy/script-server/releases/download/1.17.1/script-server.zip)
и запустить `docker build -t script-server .`

## docker-compose
I use docker-compose to run the container. Configuration file is present
