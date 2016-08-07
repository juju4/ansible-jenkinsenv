[![Build Status](https://travis-ci.org/juju4/ansible-jenkinsenv.svg?branch=master)](https://travis-ci.org/juju4/ansible-jenkinsenv)
# Jenkins Environment ansible role

Ansible role to setup jenkins test environment. It can be executed on master or nodes.

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.0

### Operating systems

Tested mostly on Ubuntu 14.04, 16.04

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - jenkinsenv
```

## Variables

```
```

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).

Once you ensured all necessary roles are present, You can test with:
```
$ cd /path/to/roles/jenkins
$ kitchen verify
$ kitchen login
```
or
```
$ cd /path/to/roles/jenkins/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues

N/A

## License

BSD 2-clause

