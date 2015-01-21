{% from "horizon/map.jinja" import horizon with context %}

include:
  - .modules

horizon:
  pkg.installed:
    - refresh: False
    - pkgs: {{ horizon.pkgs }}
  service.running:
    - enable: True
    - reload: True
    - names: {{ horizon.services }}
    - require:
      - pkg: horizon
    - watch:
      - file: /etc/apache2/sites-enabled/horizon.conf

/etc/openstack-dashboard/ubuntu_theme.py:
  file.absent

/etc/apache2/conf-enabled/openstack-dashboard.conf:
  file.absent

/etc/apache2/sites-enabled/horizon.conf:
  file.managed:
    - source: salt://horizon/files/horizon.conf
    - template: jinja

/etc/openstack-dashboard/local_settings.py:
  file.managed:
    - source: salt://horizon/files/local_settings.py
    - template: jinja
