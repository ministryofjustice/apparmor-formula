reload-apparmor-profiles:
  cmd.wait:
    - name: /etc/init.d/apparmor reload
    - creates: /tmp/something_that_doesnt_exist
    {% if salt['pillar.get']('apparmor:enabled', False) %}
    - require:
      - pkg: apparmor
    - watch:
      - file: /etc/apparmor.d/*
    {% endif %}

apparmor:
  pkg.installed
