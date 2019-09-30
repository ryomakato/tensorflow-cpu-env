#!/bin/bash
sudo docker run -it --rm \
-v $(pwd)/src:/src \
-u $(id -u):$(id -g) \
tensorflow

#-p 8888:8888 \
