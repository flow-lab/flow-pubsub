# Flow PubSub Emulator ![Build and Publish](https://github.com/flow-lab/flow-pubsub/workflows/Build%20and%20Publish/badge.svg?branch=master)

PubSub emulator to use with _Kubernetes_ for local development. 

Check [minikube.yml](./minikube.yml) for example configuration and [Makefile](./Makefile) for all important stuff.

## GitHub Actions

Project is using GitHub Actions for deployment. Workflows are located in [./github/workflows](./github/workflows), where:

- docker-release.yml - builds and deploys to DockerHub repository

## Secrets

Projects requires secrets for GitHub Actions. Secrets should be located in GitHub project secrets.

- DOCKERHUB_TOKEN - DockerHub access token

## DockerHub

[https://hub.docker.com/repository/docker/flowlab/flow-pubsub](https://hub.docker.com/repository/docker/flowlab/flow-pubsub)

## Local development/testing

Use [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/).

1. Start minikube running 

    `minikube start`

2. Initialize Minikube with local docker process: 

    `eval $(minikube docker-env)`

3. Apply minikube configuration

    `kubectl apply -f minikube.yml`
    
    output:
    ```
    deployment.apps/pubsub-deployment created
    service/pubsub created
    ```

4. Get pubsub host url end export as local env without _http://_

    ```
    HOST=$(minikube service pubsub --url)
    export PUBSUB_EMULATOR_HOST=${HOST#"http://"}
    ```

5. Export project id

    `export PUBSUB_PROJECT_ID="your-project-id"`

Next you can fire up `minikube dashboard` and use [flow](https://github.com/flow-lab/flow#pubsub) to create topic, 
subscriptions and publish messages. For example: `flow pubsub create-topic -t test`

## Credits

This project was created by cookiecutter https://github.com/flow-lab/ms-template.
