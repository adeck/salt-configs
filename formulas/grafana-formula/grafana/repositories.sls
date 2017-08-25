---

grafana_repo:
  pkgrepo.managed:
    - humanname: Grafana repo
    - name: deb https://packagecloud.io/grafana/stable/debian/ jessie main
    - file: /etc/apt/sources.list.d/grafana.list
    - gpgcheck: 1
    - key_url: https://packagecloud.io/gpg.key
    - refresh_db: True
    - require_in:
      - pkg: grafana

