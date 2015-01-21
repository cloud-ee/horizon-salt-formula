horizon mods:
  pkg.installed:
    - pkgs:
      - memcached
      - libapache2-mod-wsgi
      - python-memcache
      - python-lesscpy


Enable proxy_ws module:
    apache_module.enable:
        - name: proxy_wstunnel

Enable proxy_hhtp module:
    apache_module.enable:
        - name: proxy_http

Enable proxy_connect module:
    apache_module.enable:
        - name: proxy_connect

Enable proxy module:
    apache_module.enable:
        - name: proxy

Enable ssl module:
    apache_module.enable:
        - name: ssl

Enable wsgi module:
    apache_module.enable:
        - name: wsgi
