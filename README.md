# absolute_api
CICD framework for an Absolute java project using K8S Docker Ansible Jenkins and Helm

## Workflow

1. stage local k8s cluster using Ansible and Minikube
2. build the java code using mAvn install command inside a docker container
3. store the jar file on disk to be run inside a docker container
4. deploy the docker container to a local repository as a k8s service for testing
5. make step to prepare for promoting the k8s service

## Requirements

1. Docker (https://docs.docker.com/docker-for-windows/)
2. VirtualBox (https://www.virtualbox.org/wiki/Downloads)
2. Minikube (https://kubernetes.io/docs/tasks/tools/install-minikube/)
3. Kubectl (https://kubernetes.io/docs/tasks/tools/install-kubectl/)
4. Docker Kubernetes (optional)

## Architecture

* Docker
* Kubectl
* Jenkins
* Helm
* Ansible
* Java
* Maven
* Centos | Ubuntu | Redhat
