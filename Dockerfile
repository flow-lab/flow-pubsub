FROM google/cloud-sdk

EXPOSE 8538

ENTRYPOINT ["gcloud", "beta", "emulators", "pubsub", "start"]
