## Deployer PHP Docker Image

Based on php latest 7 CLI Alpine and composer version 2.

## Docker Hub

The relevant image will be built on [docker hub](https://hub.docker.com/r/debreczeniandras/deployerphp).

### Purpose

Provides a slim image with php cli and the [deployer PHP](https://deployer.org/) tool.


### Installed tools

Deployer PHP with its recipes, RSync, Git, Open SSH tools and Composer 2


### Available commands

* composer
* curl
* dep
* rsync 
* git
* ssh-*

## Usage

The documentation for deployer be found [here](https://deployer.org/). 

### Use this image with docker run

Entrypoint is the `dep` tool.

    docker run -it debreczeniandras/deployerphp --version
    docker run -it debreczeniandras/deployerphp deploy

### Use it in gitlab CI

In Gitlab CI override the default entrypoint, to get a shell.
        
    deploy:staging:
      image:
        name: debreczeniandras/deployerphp:6
        entrypoint: [""]
      script:
        - dep deploy staging -v
      only:
        - master
