# Bitnami Common Library Chart

A [Helm Library Chart](https://helm.sh/docs/topics/library_charts/#helm) for grouping common logic between bitnami charts.

## TL;DR

```yaml
dependencies:
  - name: someblackmagic-common
    version: 0.1.x
    repository: https://someblackmagic.github.io/helm-charts
```

```console
helm dependency update
```
