#!/bin/bash

if [ "$1" = "/usr/sbin/sshd" ]; then
	mkdir -p /var/run/sshd
fi

env > /etc/docker-env

sudo -u sakai development-environment-setup

cp /etc/ssh/ssh_host_rsa_key.pub /home/sakai/.ssh/

exec "$@"
