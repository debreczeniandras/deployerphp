FROM php:7-cli-alpine

LABEL maintainer="github@debreczeniandras.hu"

RUN apk update && apk add --no-cache rsync git openssh

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

RUN composer global require deployer/deployer deployer/recipes --ignore-platform-reqs --no-interaction --prefer-dist --no-scripts --no-progress && ln -s /root/.composer/vendor/bin/dep /usr/bin/dep

ENTRYPOINT ["dep"]

CMD ["--version"]
