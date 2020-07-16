FROM composer:latest
LABEL maintainer="github@debreczeniandras.hu"
RUN apk add rsync
RUN composer global require deployer/deployer deployer/recipes
