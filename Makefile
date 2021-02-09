all: clean lint test

MAJOR_VERSION := 1
MINOR_VERSION := 0
BUILD_VERSION ?= $(USER)
VERSION := $(MAJOR_VERSION).$(MINOR_VERSION).$(BUILD_VERSION)

# Local Setup

init-minikube:
	@minikube status || minikube start

deploy-apps: init-minikube
	@kubectl apply \
		-f manifests/namespace.yaml \
		-f manifests/go-webservice.yaml \
		-f manifests/java-webservice.yaml \
		-f manifests/python-webservice.yaml

delete-apps:
	@kubectl delete \
		-f manifests/namespace.yaml \
		-f manifests/go-webservice.yaml \
		-f manifests/java-webservice.yaml \
		-f manifests/python-webservice.yaml

check-services:
	@kubectl get pods --namespace apps
	@kubectl get services --namespace apps

port-forward-go:
	@kubectl port-forward --namespace apps service/go-webservice 9001:9001

port-forward-java:
	@kubectl port-forward --namespace apps service/java-webservice 9001:9001 9002:9002

port-forward-python:
	@kubectl port-forward --namespace apps service/python-webservice 9001:9001

# Testing

test:
	@echo TODO Implement Me!

# Linting

lint: lint-markdown lint-terraform

lint-markdown:
	@echo Linting markdown files...
	@docker run \
		--rm \
		-v `pwd`:/workspace \
		wpengine/mdl \
			/workspace
	@echo Markdown linting complete.

lint-terraform:
	@echo TODO Implement Me!

# Utilities

clean:
	@echo Cleaning Make Targets...
	@echo Cleaned Make Targets.
	@echo Removing Build Targets...
	@echo Removed Build Targets.

install-deps:
	@echo Installing Minikube...
	@brew install minikube
	@echo Minikube Installed.
