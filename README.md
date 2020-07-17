## Deployer PHP Docker Image

Based on php latest 7 CLI Alpine and composer:latest.

### Purpose

Provides a slim image with php cli and the [deployer PHP](https://deployer.org/) tool.


### Installed tools

Deployer PHP with its recipes, RSync, Git, Open SSH tools


### Available commands

* composer
* curl
* dep
* rsync 
* git
* ssh-*

## Usage

The documentation for deployer be found [here](https://deployer.org/). 

### Use this image

Entrypoint is the `dep` tool.

    docker run -it debreczeniandras/deployerphp --version
    docker run -it debreczeniandras/deployerphp deploy

