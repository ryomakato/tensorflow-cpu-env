#!/bin/bash
sudo docker run -it --rm \
-v $(pwd)/src:/src \
tensorflow

#-p 8888:8888 \
