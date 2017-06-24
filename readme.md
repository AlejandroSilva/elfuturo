# Documentation
### the configuration of docker is inspired from:
https://www.codementor.io/patrickfohjnr/developing-laravel-applications-with-docker-4pwiwqmh4
https://github.com/mrfoh/docker-laravel

#### docker-compose v3 notes:
https://docs.docker.com/compose/compose-file/compose-versioning/#upgrading

Removed: volume_driver, volumes_from, cpu_shares, cpu_quota, cpuset, mem_limit, memswap_limit, extends, group_add. See the upgrading guide for how to migrate away from these.

#### postgresql container image
https://hub.docker.com/_/postgres/

# Usefull commands
#### to create a new instance and bash it
docker-compose run web bash

#### to run "composer install", and install the dependencies:
https://hub.docker.com/r/composer/composer/

docker run --rm -v $(pwd):/app composer/composer install

#### to see the logs (output)
docker logs -f laravel54_app_1

#### to connect a runing container
docker exec -i -t [container id] /bin/bash
docker exec -i -t $(docker ps | grep _postgres_  | awk '{print $1}') /bin/bash
docker exec -i -t $(docker ps | grep _php7_  | awk '{print $1}') /bin/bash
docker exec -i -t $(docker ps | grep _nginx_ | awk '{print $1}') /bin/bash

#### to stop, delete, and force a rebuild of the containers
docker-compose down && docker-compose rm && docker-compose up --force-recreate --build
