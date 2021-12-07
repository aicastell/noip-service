# Register your public IP address to NOIP service

This docker image allows to register your public IP address to NOIP service.

## Create NOIP account

First of all you need to create an account in www.noip.com. You will be
prompted to choose a user (an email address) and a password. This information
will be used later on.

## Download git repo

Download this git repository. To do that, execute this command:

`git clone https://github.com/aicastell/noip-service.git`

Now you will find two options to run the service, one is using docker and the
other one is using docker-compose.

## Option 1: Using docker

### Build docker image

Now you need to build the docker image defined on the Dockerfile file. Execute this command:

`docker build -t noip src/`

Check if the docker image has been properly created. Use this command:

`docker images`

### Run the docker container

Now you need to run a container using the image built in previous step. You
must provide values for the user and password account you created in the very
first step, and an update interval (in minutes) to register your public IP
address in the remote service. These values are provided to the container
using USER, PASSWORD and UPDATE_INTERVAL environment variables.

`docker run -d -e "USER=contacto@criptobadia.es" -e "PASSWORD=1234" -e "UPDATE_INTERVAL=60" --name register-dns noip:latest`

The service is already running.

## Option 2: Using docker compose

### All in one step

The easiest way to do all this stuff in a single command is using
docker-compose. All you need is run this command:

`cd src; docker-compose up -d`

## Tests

In case of problems use this command to check if the docker container is running:

`docker ps | grep register-dns`

Check the container logs:

`docker logs register-dns`


