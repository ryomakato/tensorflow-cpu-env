# TensorFlow Dockerfile

This repository lets you make tesnroflow-docker-enviroment.

## 0. Install the Docker on ubuntu18.04(LTS)
Here, I give you install-code on 9/11/2019.
Please make sure you should check the docker [website](https://docs.docker.com/install/linux/docker-ce/ubuntu/).
```bash
$ sudo apt-get update
$ sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable test edge"
$ sudo apt-get update
$ sudo apt-get install docker-ce
```
## 1. Build Dockerfile with requreiment.txt
If you want to install some librarys, please write it into "requreiment.txt".
Then, build Dockerfile to make the image.
```bash
$ docker build -t tensorflow .
```
Note: you have to build on the directory which has Dockerfile.
## 2. Run the docker image
You can run the image to make the container as follow:
```bash
$ bash run_docker.sh
```
## 3. Have a enjoy programming!
./src in the host machine is mounted to ./src in the docker-container.
You can create some code in "./src".
## Note:
- How to change tensorflow version?
A. Change "Dockerfile" as follow:
```Dockerfile
Before: ARG TENSORFLOW_VERSION=latest-py3
After : ARG TENSORFLOW_VERSION=2.0.0a0-py3
```
- How to link another directory to the directory in ./src on your host machine?
```bash
$ ln -s ORIGIN_OF_LINK DESTINATION_OF_LINK
```
