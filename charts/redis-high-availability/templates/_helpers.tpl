{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "haproxy.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "haproxy.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Generate basic labels
*/}}
{{- define "haproxy.labels" -}}
helm.sh/chart: {{ include "haproxy.chart" . }}
{{ include "haproxy.name" . }}: {{ include "haproxy.name" . }}
app.kubernetes.io/name: {{ include "haproxy.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Define the chart version
*/}}
{{- define "haproxy.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" }}
{{- end }}

{{- define "redis-ha.password" -}}
{{- printf "%s-%s-redis" .Release.Name .Release.Namespace | sha256sum | trunc 32 }}
{{- end }}

{{- define "redis-ha.secretName" -}}
{{ .Release.Name }}-redis-auth
{{- end }}
