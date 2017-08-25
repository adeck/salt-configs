---

{% from "grafana/map.jinja" import grafana with context %}

grafana_config:
  file.managed:
      - name: /etc/grafana/grafana.ini
      - template: jinja
      - source: salt://grafana/files/grafana.ini
      - mode: 0755
      - context:
          config: {{ grafana['config'] }}




