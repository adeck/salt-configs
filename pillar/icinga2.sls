---

icinga2:
  lookup:
    pkgs:
      - nagios-nrpe-plugin
    nrpe:
      config:
        server_port: 5666
        commands:
          check_users: /usr/lib/nagios/plugins/check_users -w 5 -c 10
      defaults:
        DAEMON_OPTS: "\"--no-ssl\""
    conf:
      templates:
        special-host:
          type: Host
          conf:
            vars:
              sla: "24x5"
        special-downtime:
          type: ScheduledDowntime
          conf:
            ranges:
              monday: "02:00-03:00"
        special-notification:
          type: Notification
          conf:
            types:
              - FlappingStart
              - FlappingEnd
      hosts:
        gw-infra:
          import: generic-host
          address: gw-infra.local
          vars:
            sla: "24x7"
          services:
            ssh:
              import: generic-service
              host_name: gw-infra
              check_command: ssh
              vars:
                sla: "24x7"


