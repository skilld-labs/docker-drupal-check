# Docker image for drupal-check

- A simple docker image build to use https://github.com/mglaman/drupal-check easily
  - _Check Drupal code for deprecations and discover bugs via static analysis_

## Docker hub

- https://hub.docker.com/r/skilldlabs/docker-drupal-check/


## How to use

```
cd your_drupal_project
docker run --rm -v `pwd`:`pwd` -w `pwd` skilldlabs/docker-drupal-check:last drupal-check -ad -vv -n --no-progress web/modules/custom/
```

## Adding php extensions

```
docker run --rm -v `pwd`:`pwd` -w `pwd` skilldlabs/docker-drupal-check:last sh -c "apk add php7-soap && drupal-check -ad -vv -n --no-progress web/modules/custom/"
```
