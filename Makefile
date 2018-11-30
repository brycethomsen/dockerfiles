BASE := debian
BASE_TAG := stretch-slim
DOCKER_USER := bryce
DOCKER_HUB := brycethomsen
IMAGE := $(shell ls -d */ | cut -f1 -d'/')

.PHONY: $(IMAGE)
$(IMAGE):
	for drfile in $(IMAGE) ; do \
		docker build \
			-t $(DOCKER_HUB)/$$drfile \
			--build-arg BASE=$(BASE) \
			--build-arg BASE_TAG=$(BASE_TAG) \
			--build-arg USER=$(DOCKER_USER) \
			--no-cache \
			$$drfile/. ; \
	done