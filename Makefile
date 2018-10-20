BASE := debian
BASE_TAG := stretch-slim
DOCKER_USER := bryce
IMAGE := ""

$(IMAGE):
	docker build \
		-t $(IMAGE) \
		--build-arg BASE=$(BASE) \
		--build-arg BASE_TAG=$(BASE_TAG) \
		--build-arg USER=$(DOCKER_USER) \
		--no-cache \
		$(IMAGE)/. 

.PHONY: $(IMAGE) all