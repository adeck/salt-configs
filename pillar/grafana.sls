---

grafana_version: 4
grafana:
  grafana_timeout: 5
  grafana_user: admin
  grafana_password: admin
  grafana_url: 'http://localhost:3000'
  lookup:
    conf:
      default:
        instance_name: "${HOSTNAME}"
      server:
        protocol: http
        http_addr:
        http_port: 3000
        domain: localhost
        enforce_domain: false
      analytics:
        # naw, man. I'm not being part of their app analytics
        reporting_enabled: false
        # updates to plugins and dashboards
        check_for_updates: true
      security:
        admin_user: admin
        admin_password: admin
        # why is this thing so chatty by default?
        disable_gravatar: false
      auth.basic:
        enabled: true
      snapshots:
        # no. By default no data sharing allowed.
        external_enabled: false
    dashbaords: {}


