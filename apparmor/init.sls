reload-profiles:
  cmd.wait:
    - name: /etc/init.d/apparmor reload
    - creates: /tmp/something_that_doesnt_exist
