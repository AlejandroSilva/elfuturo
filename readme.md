# from the guide:
https://medium.com/@shakyShane/laravel-docker-part-1-setup-for-development-e3daaefaf3c


# first: install the composer dependencies
docker run --rm -v $(pwd):/app composer/composer install

# to see the logs (output)
docker logs -f laravel54_app_1


# to create a new instance and bash it
docker-compose run web bash

# connect a runing container
docker exec -i -t 665b4a1e17b6 /bin/bash



# docker-compose v3:
https://docs.docker.com/compose/compose-file/compose-versioning/#upgrading

Removed: volume_driver, volumes_from, cpu_shares, cpu_quota, cpuset, mem_limit, memswap_limit, extends, group_add. See the upgrading guide for how to migrate away from these.

