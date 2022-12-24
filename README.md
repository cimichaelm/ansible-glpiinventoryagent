ansible-glpiinventoryagent
============================

- Installs `glpiinventory-agent`
- nightly cronjob to run inventory, and sent it to a GLPI instance

(i.e. passive, not as a deamon).

Currently tested with Debian Stretch, and CentOS6/7.

Example Playbook
----------------


    - hosts: myhosts
      become: true

      vars:
        glpiinventoryagent_server_url: https://glpi.host.org/glpi/plugins/glpiinventory/
        glpiinventoryagent_user: username
        glpiinventoryagent_password: hackme

      roles:
        - ansible-glpiinventoryagent

License
-------

BSD

Author Information
------------------


Based on ansible-fusioninventoryagent by:
Dick Visser <dick.visser@geant.org>
