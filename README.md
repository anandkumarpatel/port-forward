# port-forward
used to forward ports

# usage
2 environment variables need to be defined to use this port forwarder
1. REMOTE_HOST: host you want to forward to
2. REMOTE_PORT: port on remote host to forward to

port 80 inside the container will be forwared to the remote host and port

use -P to have docker pick a random port on the host
use -p <host_port>:80 to define a custom port to forward

# example
docker run -e REMOTE_HOST=10.32.0.1 -e REMOTE_PORT=27017 -p 80:50001 port-forward
