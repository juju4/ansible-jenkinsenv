#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

rolesdir=$(dirname $0)/..

[ ! -d $rolesdir/geerlingguy.java ] && git clone https://github.com/geerlingguy/ansible-role-java.git $rolesdir/geerlingguy.java
[ ! -d $rolesdir/ernestas-poskus.docker ] && git clone https://github.com/ernestas-poskus/ansible-role-docker.git $rolesdir/ernestas-poskus.docker
[ ! -d $rolesdir/lxd ] && git clone https://github.com/juju4/ansible-lxd.git $rolesdir/lxd
[ ! -d $rolesdir/lxdconfigure ] && git clone https://github.com/juju4/ansible-lxdconfigure.git $rolesdir/lxdconfigure
[ ! -d $rolesdir/kitchen ] && git clone https://github.com/juju4/ansible-kitchen.git $rolesdir/kitchen
[ ! -d $rolesdir/redhat-epel ] && git clone https://github.com/juju4/ansible-redhat-epel $rolesdir/redhat-epel

