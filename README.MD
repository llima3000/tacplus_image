# Really simple docker image to run Tacacs+ 

This docker image is based on Ubuntu Bionic (18.04 LTS)

### Command To build this image 
```
git clone https://github.com/llima3000/tacplus_image
cd tacplus_image
docker build --no-cache -t tacplus .docker build --no-cache -t tacplus . 
```

### Command to run the container mapping external tacacs config file
```
docker run -td --name tacplus \
       -v <tacplus local cfg file>:/etc/tacacs+/tac_plus.conf \
       tacplus
```
