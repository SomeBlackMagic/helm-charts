# banzaicloud-logging-operator-monitoring

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

Monitor for [banzaicloud/logging-operator](https://github.com/banzaicloud/logging-operator)

Using [grafana dashboard](https://grafana.com/grafana/dashboards/7752)
### TODO grafana dashboard not testing

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| grafana.defaultLabel | bool | `true` | Add `grafana_dashboard: "1"` default label |
| grafana.enabled | bool | `false` | Enable deploying cert-manager dashboard to Grafana |
| grafana.extraAnnotations | object | `{}` | Extra annotations for dashboard ConfigMap |
| grafana.extraLabels | object | `{}` | Extra labels for dashboard ConfigMap |
| prometheus.enabled | bool | `true` | Create prometheus-operator resources |
| prometheus.rule.additionalAlerts | list | `[]` | Add additional alerts to the group |
| prometheus.rule.additionalLabels | object | `{}` | Additional Labels for PrometheusRule resource |
| prometheus.rule.alerts.configFailed | bool | `true` | Enable FluentdDown alert |
| prometheus.rule.enabled | bool | `true` | Create PrometheusRule resource |
| prometheus.rule.namespace | string | `""` | Optional Namespace for PrometheusRule resource |

## License

This Helm chart is free software: you can redistribute it and/or modify it under the terms
of the GNU Affero General Public License as published by the Free Software Foundation,
version 3 of the License.
