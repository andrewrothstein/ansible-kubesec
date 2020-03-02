andrewrothstein.kubesec
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-kubesec.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-kubesec)

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
