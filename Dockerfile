FROM skilldlabs/php:72

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.schema-version="1.0" \
  org.label-schema.name="docker-drupal-check" \
  org.label-schema.description="Check Drupal code for deprecations and discover bugs via static analysis - php & mglaman/drupal-check" \
  org.label-schema.vcs-url="https://github.com/skilld-labs/docker-drupal-check" \
  maintainer="David Ferlay <davidferlay@outlook.com>, Andy Postnikov <apostnikov@gmail.com>"

RUN set -e \
  && curl -O -L https://github.com/mglaman/drupal-check/releases/latest/download/drupal-check.phar \
  && mv drupal-check.phar /usr/local/bin/drupal-check \
  && chmod +x /usr/local/bin/drupal-check

VOLUME /work
WORKDIR /work

CMD set -e \
  && drupal-check --version \
  && drupal-check --help
