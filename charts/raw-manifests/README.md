# raw-manifests

Generic Helm chart for rendering arbitrary Kubernetes manifests from `values.resources`.

Useful with Flux `HelmRelease.spec.dependsOn` when custom resources must be applied only after another HelmRelease installs the required CRDs/operator.

## Example values

```yaml
resources:
  - apiVersion: v1
    kind: ConfigMap
    metadata:
      name: "{{ .Release.Name }}-config"
      namespace: "{{ .Release.Namespace }}"
    data:
      example: "true"
```

## Render locally

```bash
helm template test ./raw-manifests -f values.yaml
```
