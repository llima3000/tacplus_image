# Really simple docker image to run Tacacs+ 

This docker image is based on Ubuntu Bionic (18.04 LTS)

### Command To build this image 

This command is o build the image from this repository and create a local docker image named **tacplus**

```
git clone https://github.com/llima3000/tacplus_image
cd tacplus_image
docker build --no-cache -t tacplus .
```

### Command to run the container mapping external tacacs config file

To run a container exposing the services in the default port 49/tcp
```
docker run -td --name tacplus -p 49:49 \
       -v <tacplus local cfg file>:/etc/tacacs+/tac_plus.conf \
       tacplus
```

### Debug options to run the container

The container now has debug enabled by default for the tacplus service. The default level is 32 and it can be changed adding the environment variable DEBUGLEVEL with the desired eug level, as the follwing example
```
docker run -td --name tacplus -p 49:49 -e DEBUGLEVEL=64 \
       -v <tacplus local cfg file>:/etc/tacacs+/tac_plus.conf \
       tacplus
```
More info about the service and debug in https://manpages.ubuntu.com/manpages/bionic/man8/tac_plus.8.html
More info about the config file in https://manpages.ubuntu.com/manpages/bionic/man5/tac_plus.conf.5.html

See also a python client for test and programming
https://github.com/ansible/tacacs_plus
