FROM php:7-cli-alpine

LABEL maintainer="github@debreczeniandras.hu"

RUN apk update && apk add --no-cache rsync git openssh

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN composer global require "deployer/deployer:~6.6.0" "deployer/recipes:^6.2" --ignore-platform-reqs --no-suggest --no-interaction --prefer-dist --no-scripts --no-progress && ln -s /root/.composer/vendor/bin/dep /usr/bin/dep

ENTRYPOINT ["dep"]

CMD ["--version"]
