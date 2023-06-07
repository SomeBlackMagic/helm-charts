#helm lint .
#helm template . --values ci/default-values.yaml
helm install --debug --values ci/default-values.yaml --dry-run app .
