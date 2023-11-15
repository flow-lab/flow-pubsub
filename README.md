# Flow PubSub

Flow PubSub is a versatile and lightweight Google Pub/Sub emulator, designed to streamline local development workflows
in both Kubernetes and Docker Compose environments. This emulator is an ideal tool for developers seeking to test
Pub/Sub functionalities without deploying to a live cloud environment.

## Discover on DockerHub

Explore and download the emulator from our DockerHub
repository:[https://hub.docker.com/repository/docker/flowlab/flow-pubsub](https://hub.docker.com/repository/docker/flowlab/flow-pubsub)

## Local development/testing

### 1. With [docker-compose](./docker-compose.yml)

### 2. With [Minikube](./minikube.yml)

1. Start minikube running: `minikube start`

2. Initialize Minikube with local docker process: `eval $(minikube docker-env)`

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

5. Export project id: `export PUBSUB_PROJECT_ID="your-project-id"`

Next you can fire up `minikube dashboard` and use [flow](https://github.com/flow-lab/flow#pubsub) to create topic,
subscriptions and publish messages. For example: `flow pubsub create-topic -t test`

## Open Source License

Flow PubSub is open source and available under the MIT License, promoting free and unrestricted use to foster innovation
and collaboration.