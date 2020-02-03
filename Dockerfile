FROM google/cloud-sdk

EXPOSE 8538

ENTRYPOINT ["gcloud", "beta", "emulators", "pubsub"]
CMD ["start", "--host-port=0.0.0.0:8538"]