# port-forward
used to forward ports

## usage
The following environment variables need to be defined

1. `REMOTE_HOST` host you want to forward to
2. `REMOTE_PORT` port on remote host to forward to

port 80 inside the container will be forwarded to the remote host and port

* use `-P` to have docker pick a random port on the host to forward
* use `-p <host_port>:80` to define a custom port to forward where `host_port` is the port on the host that needs to be forwarded

## example
the following will forward local host traffic from port 8080 to remote host 10.32.0.1 and port 27017
```
docker run -e REMOTE_HOST=10.32.0.1 -e REMOTE_PORT=27017 -p 8080:80 port-forward
```
