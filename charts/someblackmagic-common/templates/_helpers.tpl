{{/* vim: set filetype=mustache: */}}
{{- define "common.cmd" -}}
    {{- if typeIs "string" .value -}}
        {{- range (split " " .value) }}
- {{ . | quote }}
        {{- end }}
    {{- else }}
        {{- tpl (.value | toYaml) .context -}}
    {{- end }}
{{- end -}}

{{- define "common.containerEnvVars" -}}
{{- range $key, $val := .value }}
- name: {{ $key }}
  value: {{ $val | quote }}
{{- end -}}
{{- end -}}

{{- define "common.containerEnvVarsSecrets" -}}
{{- range $key, $val := .value }}
- secretRef:
    name: {{ $val.name }}
{{- end -}}
{{- end -}}

{{- define "common.nodePlacementAffinity" -}}
- key: node-role.kubernetes.io/{{ .group }}
  operator: In
  values: ["{{ .group }}"]
{{- end -}}

{{- define "common.nodePlacementTolerations" -}}
- key: node-role.kubernetes.io/{{ .group }}
  operator: Equal
  value: {{ .group }}
  effect: NoSchedule
{{- end -}}


{{- define "common.podAntiAffinitySpread" -}}
- weight: {{ .weight }}
  podAffinityTerm:
    labelSelector:
      matchLabels:
        app.kubernetes.io/chart-name: {{ .context.Chart.Name }}
        app.kubernetes.io/release-name: {{ .context.Release.Name }}
    topologyKey: kubernetes.io/hostname
{{- end -}}
