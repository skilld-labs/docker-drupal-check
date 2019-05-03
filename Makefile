NAME = skilldlabs/docker-drupal-check

TAGS ?= 1.0.9

.PHONY: all build push latest

all: build push

build:
	@echo "Building images for tags: $(TAGS)"
	set -e; for i in $(TAGS); do printf "\nBuilding $(NAME):$$i \n\n"; \
		docker build -t $(NAME):$$i --no-cache --pull \
		--build-arg DRUPAL_CHECK=$$i \
		--build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
		--build-arg VCS_REF=`git rev-parse --short HEAD` .; \
		done

push:
	@echo "Pushing images for tags: $(TAGS)"
	set -e; for i in $(TAGS); do printf "\nPushing $(NAME):$$i \n\n"; docker push $(NAME):$$i; done

latest:
	@echo "Tagging latest release"
	docker tag $(NAME):$(TAGS) $(NAME):latest
	@echo "Manually run docker push $(NAME):latest to set latest release"
