# Register your public IP address to NOIP service

This docker image allows to register your public IP address in noip service. Steps:

## Setup account

Setup an account in www.noip.com, creating user and password, and choosing a domain name

## Download git repo

Download this git repository

`git clone https://github.com/aicastell/noip-service.git`

## Build docker image

Build the docker image executing this command:

`docker build -t noip .`

Check if the image has been properly generated using this command:

`docker images`

## Run the container

Run the container defining proper valures for environment variables USER,
PASSWORD and UPDATE_INTERVAL. Take into account UPDATE_INTERVAL is a value in
minutes (60s)

`docker run -d -e "USER=contacto@criptobadia.com" -e "PASSWORD=1234" -e "UPDATE_INTERVAL=60" --name register-dns noip:latest`


## Tests

Check if the container is running

`docker ps | grep register-dns`

Check the container logs:

`docker logs register-dns`
