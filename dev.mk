# デバッグ用のdocker container

DOCKER_IMAGE = my-itamae:vagrant

.PHONY: all build run

all: run

build:
	docker build -t $(DOCKER_IMAGE) .

run: build
	docker run --rm -it $(DOCKER_IMAGE)
