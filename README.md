# Backend FastAPI Practicing
This project was created with the purpose of studying and practicing concepts related to API development, Python, and Docker.

# Assumptions
This is a study project, without any commercial purpose.

# Dependencies
* The Docker client must be installed

# Stack
* Python 3.9.6
* Docker
* Poetry

# Comands
* Show running containers
```
docker ps
```
* Show all containers
```
docker ps -a
```
* Stop a running container
```
docker stop mycontainer
```
* Remove a container
```
docker rm mycontainer
```
* Build an image from a Dockerfile
```
docker build -t myimage .
```
* Run a container named *mycontainer* from the image *myimage* and publish a container's port to the host
```
docker run --name mycontainer -p 8000:8000 myimage
```
* List all directory contents in a running container
```
docker exec -it mycontainer ls -a
```
* Execute an interactive *bash* shell in a running container
```
docker exec -it mycontainer /bin/bash
```
* Run Pytest in a running container
```
docker exec -it mycontainer pytest app/tests/
```

# API Documentation
[Swagger Localhost](http://localhost:8000/docs)
