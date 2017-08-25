---

{% for pkg in ['grafana', 'python-requests'] %}
{{ pkg }}:
  pkg.installed:
    - require_in:
      - service: grafana_service
{% endfor %}

