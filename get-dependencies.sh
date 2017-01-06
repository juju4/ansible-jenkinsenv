#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

rolesdir=$(dirname $0)/..

[ ! -d $rolesdir/geerlingguy.java ] && git clone https://github.com/geerlingguy/ansible-role-java.git $rolesdir/geerlingguy.java
[ ! -d $rolesdir/ernestas-poskus.docker ] && git clone https://github.com/ernestas-poskus/ansible-role-docker.git $rolesdir/ernestas-poskus.docker
[ ! -d $rolesdir/juju4.lxd ] && git clone https://github.com/juju4/ansible-lxd.git $rolesdir/juju4.lxd
[ ! -d $rolesdir/juju4.lxdconfigure ] && git clone https://github.com/juju4/ansible-lxdconfigure.git $rolesdir/juju4.lxdconfigure
[ ! -d $rolesdir/juju4.kitchen ] && git clone https://github.com/juju4/ansible-kitchen.git $rolesdir/juju4.kitchen
[ ! -d $rolesdir/juju4.redhat-epel ] && git clone https://github.com/juju4/ansible-redhat-epel $rolesdir/juju4.redhat-epel
## galaxy naming: kitchen fails to transfer symlink folder
#[ ! -e $rolesdir/juju4.jenkinsenv ] && ln -s ansible-jenkinsenv $rolesdir/juju4.jenkinsenv
[ ! -e $rolesdir/juju4.jenkinsenv ] && cp -R $rolesdir/ansible-jenkinsenv $rolesdir/juju4.jenkinsenv

## don't stop build on this script return code
true

