NAME      := bergpb/docker-ansible
IMG       := ${NAME}:${TAG}
LATEST    := ${NAME}:latest

all: build tag push

build:
	@docker build -t ${IMG} .

tag:
	@docker tag ${IMG} ${LATEST}

push:
	@docker push ${IMG}
	@docker push ${LATEST}