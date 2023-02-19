{{/* vim: set filetype=mustache: */}}
{{- define "common.cmd" -}}
    {{- if typeIs "string" .value }}
        {{- range (split " " .value) }}
- "{{ . }}"
        {{- end }}
    {{- else }}
        {{- tpl (.value | toYaml) .context }}
    {{- end }}
{{- end -}}

{{- define "common.extraEnvVars" -}}
{{- range $key, $val := .value }}
- name: {{ $key }}
  value: {{ $val | quote }}
{{- end }}
{{- end -}}

