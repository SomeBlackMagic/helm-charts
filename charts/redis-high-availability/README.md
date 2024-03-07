# redis-high-availability

```bash
export KUBE_CLUSTER_DOMAIN="cluster.local"
export HELM_RELEASE_NAME="test-redis"
export KUBE_NAMESPACE="test-ns"

helm upgrade \
--install ${HELM_RELEASE_NAME} \
--namespace ${KUBE_NAMESPACE} \
--create-namespace \
--debug \
--atomic \
--wait \
$(pwd) \
-f tmp.yaml \
\
--set haproxy.clusterDomain=${KUBE_CLUSTER_DOMAIN} \
--set redis.clusterDomain=${KUBE_CLUSTER_DOMAIN} \
--set haproxy.fullnameOverride=${HELM_RELEASE_NAME}-ha \
--set redis.fullnameOverride=${HELM_RELEASE_NAME} \
\
--set redis.sentinel.masterSet="${HELM_RELEASE_NAME}-${KUBE_NAMESPACE}"


```
## License

This Helm chart is free software: you can redistribute it and/or modify it under the terms
of the GNU Affero General Public License as published by the Free Software Foundation,
version 3 of the License.
