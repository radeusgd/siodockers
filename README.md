To build the dockerfile, use `docker build . -t siodockers`.

To run the worker in the background `docker run -d siodockers`.

To open bash prompt `docker exec -it [name] /bin/bash`,
or `docker exec -u 0 -it [name] /bin/bash` to log-in as root.

You need to setup a VPN server on the machine with siodockersd and filetracker, this tutorial is good: https://www.digitalocean.com/community/tutorials/how-to-run-openvpn-in-a-docker-container-on-ubuntu-14-04?utm_source=githubreadme

From that tutorial, generate CLIENTNAME.ovpn file and place it at vpn/vpn.conf in this folder.

Then run `docker-compose up`.
