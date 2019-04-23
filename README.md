# Docker image for drupal-check

- A simple docker image build to use https://github.com/mglaman/drupal-check easily
  - _Check Drupal code for deprecations and discover bugs via static analysis_

## Docker hub

- https://hub.docker.com/r/skilldlabs/docker-drupal-check/

## Tags

- 2 tags are available :
  - latest : based on [skilldlabs/php:72](https://github.com/skilld-labs/docker-php) image
  - 7.2-cli-alpine : based on [php:7.2-cli-alpine](https://hub.docker.com/_/php) official image


## How to use

```
cd your_drupal_project
docker run --rm -v `pwd`:`pwd` -w `pwd` skilldlabs/docker-drupal-check:last drupal-check -ad -vv -n --no-progress web/modules/custom/
```
