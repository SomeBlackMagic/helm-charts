# Kubernetes Helm Charts
These charts are provided as-is with no warranties.

## Usage

[Helm](https://helm.sh) must be installed to use the charts, please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```shell
helm repo add someblackmagic https://someblackmagic.github.io/helm-charts/
helm repo update
```

You can then run `helm search repo someblackmagic` to see the charts.

## TODO

* add https://github.com/c4po/harbor_exporter to helm charn and rules
* add hashicorp vault monitoring serivice and rules 
* add alert for https://github.com/sstarcher/helm-exporter

## License

[MIT License](./LICENSE).
