# Hosting a Jupyter Notebook in Docker
### This is a repo for creating a docker container that hosts a jupyter notebook running python for data science, with data science dependencies installed

1. To build the docker image
```
docker build -t docker-jupyter-nb .
```
Here the -t specifies the name. Change 'docker-jupyter-nb' to your preferred name.

2. To run the docker container: 
```
docker run -p 8888:8888 -v /path/to/host/directory:/home/jovyan/work jupyter/base-notebook
```

The option -p 8888:8888 maps the host port 8888 to the container port 8888.   
The option -v /path/to/host/directory:/home/jovyan/work mounts the host directory to the container directory.
