---

vim_install:
  pkg.installed:
    - pkgs:
      - vim
      - tree
      - psmisc
      - curl

include:
  - nagios.plugins
  - nagios.nrpe.server

