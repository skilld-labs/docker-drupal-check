# docker-drupal-check

https://hub.docker.com/r/skilldlabs/docker-drupal-check/

- A simple docker image build to use https://github.com/mglaman/drupal-check easily

_Check Drupal code for deprecations and discover bugs via static analysis_

## Docker hub

- https://hub.docker.com/r/skilldlabs/docker-drupal-check/


## How to use

- `docker run --rm -v `pwd`:`pwd` -w `pwd` skilldlabs/php:72 composer validate --strict --quiet`
- `docker run --rm -v `pwd`:`pwd` -w `pwd` skilldlabs/docker-drupal-check:last drupal-check -ad -vv -n --no-progress web/modules/custom/`