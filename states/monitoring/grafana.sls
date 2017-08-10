---

grafana_repo:
  pkgrepo.managed:
    - humanname: Grafana repo
    - name: deb https://packagecloud.io/grafana/stable/debian/ jessie main
    - dist: stable
    - file: /etc/apt/sources.list.d/grafana.list
    - gpgcheck: 1
    - key_url: https://packagecloud.io/gpg.key

grafana_server:
  pkg.installed:
    - name: grafana-server
    - require:
      - pkgrepo: icinga_repo

grafana_service:
  service.running:
    - name: grafana-server
    - require:
      - pkg: grafana_server


