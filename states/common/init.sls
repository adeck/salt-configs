---

vim_install:
  pkg.installed:
    - pkgs:
      - vim
      - tree
      - psmisc
      - curl

include:
  - nagios.nrpe
  - nagios.plugins

