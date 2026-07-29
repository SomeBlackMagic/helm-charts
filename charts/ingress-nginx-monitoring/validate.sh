helm lint .
helm template . --values ci/default-values.yaml --api-versions monitoring.coreos.com/v1
helm install --debug --values ci/default-values.yaml --dry-run app .
