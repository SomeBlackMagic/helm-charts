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
