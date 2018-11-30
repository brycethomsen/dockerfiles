BASE := debian
BASE_TAG := stretch-slim
DOCKER_USER := bryce
<<<<<<< HEAD
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
=======
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
>>>>>>> 6163ba76756ee5f076b39d08a87053cf5fec59a6

