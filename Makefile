BASE := debian
BASE_TAG := stretch-slim
DOCKER_USER := bryce
IMAGES := $(dir $(wildcard */.))
IMAGE := ""

all: $(IMAGES)
	@for dockerfile in $^ ; do \
		echo doing a make build $$dockerfile ; \
    done

build:
	docker build \
		-t $(IMAGE) \
		--build-arg BASE=$(BASE) \
		--build-arg BASE_TAG=$(BASE_TAG) \
		--build-arg USER=$(DOCKER_USER) \
		--no-cache \
		$(IMAGE)/. 

.PHONY: $(IMAGE) all