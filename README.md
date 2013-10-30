Simple Nginx setup in Docker
============================

Just a quick and dirty example of how to create and run a simple docker
container, since I seem to easily forget.


## Usage

```
# First, copy this repo's contents into the Vagrant VM

cd nginx-docker/
docker build .
docker run <image id> -d

# Get the port that nginx is mapped to:
docker port <container id> 80

# Vefify that we get our expected test page back:
wget localhost:<port>
```


## Debugging

```
# You can open a shell inside a new container:
docker run -i -t <image id> /bin/bash
```
