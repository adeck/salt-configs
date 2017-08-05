---

vim_install:
  pkg.installed:
    - pkgs:
      - vim
      - tree
      - psmisc
      - curl

include:
  - icinga2.nrpe-server

