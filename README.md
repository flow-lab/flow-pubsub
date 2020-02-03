# Flow PubSub Emulator ![Build and Publish](https://github.com/flow-lab/flow-pubsub/workflows/Build%20and%20Publish/badge.svg?branch=master)

PubSub emulator to use with _Kubernetes_ for local development. 

Check [minikube.yml](./minikube.yml) for example configuration.

Check Makefile for all important stuff.

### GitHub Actions

Project is using GitHub Actions for deployment. Workflows are located in [./github/workflows](./github/workflows), where:

- docker-release.yml - builds and deploys to DockerHub repository

### Secrets

Projects requires secrets for GitHub Actions. Secrets should be located in GitHub project secrets.

- DOCKERHUB_TOKEN - DockerHub access token

## DockerHub

[https://hub.docker.com/repository/docker/flowlab/flow-pubsub](https://hub.docker.com/repository/docker/flowlab/flow-pubsub)
 
## Credits

This project was created by cookiecutter https://github.com/flow-lab/ms-template.
