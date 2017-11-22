# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "molten/map.jinja" import molten with context %}

salt-master-reload:
  service.running:
    - name: salt-master
    - watch:
      - salt-api-config

salt-api-config:
  file.managed:
    - name: {{ molten.api_config }}
    - template: jinja
    - source: salt://molten/files/api.conf.jinja

