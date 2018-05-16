To build the dockerfile, use `docker build . -t siodockers`.

To run the worker in the background `docker run -d siodockers`.

To open bash prompt `docker exec -it [name] /bin/bash`,
or `docker exec -u 0 -it [name] /bin/bash` to log-in as root.