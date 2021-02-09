# Google Cloud Platform Kubernetes Cluster

Repository used to deploy a Kubernetes cluster to [GCP]. The repo also has commands to set up a local Kubernetes cluster
that is the same as the one in GCP.

## Deployment

This repo does the deployment of not just the [Kubernetes] cluster in to GCP, but also 3 simple http based services to
run in it. If you are building your own infrastructure, the suggestion is to only do a Kubernetes cluster in a repo,
then have the necessary terraform deployment code in each of the service repos such that they can be deployed to the
Kubernetes cluster appropriately. Ideally you wouldn't want to change your service, and have to update a separate repo
to get it to deploy correctly.

## Quick Start

1. Run `make`

## Useful Documents

* [Design](docs/design.md)
* [Development](docs/development.md)
* [SRE](docs/sre.md)
* [Testing](docs/testing.md)

[GCP]: https://cloud.google.com/
[Kubernetes]: https://kubernetes.io/