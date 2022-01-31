# longhorn-monitoring

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

Monitor nginx ingress controller


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
| prometheus.rule.alerts.configFailed | bool | `true` | Enable NGINXConfigFailed alert |
| prometheus.rule.alerts.certificateExpiry | bool | `true` | Enable NGINXCertificateExpiry alert |
| prometheus.rule.alerts.tooMany500s | bool | `true` | Enable NGINXTooMany500s alert |
| prometheus.rule.alerts.tooMany400s | bool | `true` | Enable NGINXTooMany400s alert |
| prometheus.rule.enabled | bool | `true` | Create PrometheusRule resource |
| prometheus.rule.namespace | string | `""` | Optional Namespace for PrometheusRule resource |

## License

This Helm chart is free software: you can redistribute it and/or modify it under the terms
of the GNU Affero General Public License as published by the Free Software Foundation,
version 3 of the License.
