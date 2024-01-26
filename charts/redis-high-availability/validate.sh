#!/bin/bash

helm dependency update
helm dependency build

export KUBECONFIG=~/.kube/< yourcontextfile >

NAMESPACE="redis"

helm upgrade --install --debug --wait -f values.yaml app . --namespace "$NAMESPACE"
