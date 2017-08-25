---

{% from "grafana/map.jinja" import grafana with context %}

local_cloudwatch:
  grafana4_datasource.present:
    - name: local_cloudwatch
    - type: cloudwatch
    - url: ''
    - json_data: '{authType: "arn", timeField: "@timestamp", defaultRegion: "us-west-1"}'
    - is_default: true

{% for name, source in grafana['datasources'].iteritems() %}

# TODO

{% endfor %}



