#!/bin/bash
# Utility script to quickly install docker
# run as root
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
