andrewrothstein.kubesec
=========
![Build Status](https://github.com/andrewrothstein/ansible-kubesec/actions/workflows/build.yml/badge.svg)

Installs [kubesec](https://kubesec.io/).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.kubesec
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
