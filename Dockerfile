FROM skilldlabs/php:73

ARG BUILD_DATE
ARG VCS_REF
ARG DRUPAL_CHECK

LABEL org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.schema-version="1.0" \
  org.label-schema.name="docker-drupal-check" \
  org.label-schema.description="Check Drupal code for deprecations and discover bugs via static analysis - php & mglaman/drupal-check" \
  org.label-schema.vcs-url="https://github.com/skilld-labs/docker-drupal-check" \
  maintainer="David Ferlay <davidferlay@outlook.com>, Andy Postnikov <apostnikov@gmail.com>"

RUN php -r "copy('https://github.com/mglaman/drupal-check/releases/download/$DRUPAL_CHECK/drupal-check.phar', '/usr/local/bin/drupal-check');" \
  && chmod +x /usr/local/bin/drupal-check && drupal-check -V

VOLUME /srv

CMD ["drupal-check", "--help"]
