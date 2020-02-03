SHELL := /bin/bash

IMG_NAME := flow-pubsub
DOCKER_IMG := flowlab/${IMG_NAME}

docker-build:
	docker build -t ${DOCKER_IMG}:latest .

docker-clean:
	docker system prune -f

# minikube
minikube-init:
	eval $(minikube docker-env)

minikube-apply:
	kubectl apply -f minikube.yml

minikube-get-pod:
	kubectl get pod

