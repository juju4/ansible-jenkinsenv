[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)
# DEPRECATED/LOOKING FOR MAINTAINERS -> archived

[![Build Status - Master](https://travis-ci.com/juju4/ansible-jenkinsenv.svg?branch=master)](https://travis-ci.com/juju4/ansible-jenkinsenv)
[![Build Status - Devel](https://travis-ci.com/juju4/ansible-jenkinsenv.svg?branch=devel)](https://travis-ci.com/juju4/ansible-jenkinsenv/branches)
# Jenkins Environment ansible role

Ansible role to setup jenkins test environment. It can be executed on master or nodes.

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.0
 * 2.2
 * 2.5

### Operating systems

Tested on Ubuntu 14.04, 16.04 and 18.04

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.jenkinsenv
```

## Variables

```
```

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).

Once you ensured all necessary roles are present, You can test with:
```
$ cd /path/to/roles/juju4.jenkinsenv
$ kitchen verify
$ kitchen login
```
or
```
$ cd /path/to/roles/juju4.jenkinsenv/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues

N/A

## License

BSD 2-clause

