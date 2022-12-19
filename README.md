# node-tuya-mqtt

Docker image for tuya-mqtt bridge. This software allows you to
integrate your tuya-devices in your selfmade mqtt IOT network.

The tuya-mqtt-bridge software itself is provided here:
https://github.com/TheAgentK/tuya-mqtt

The node.js software and base Dockerfile you can find here:
https://github.com/nodejs/docker-node

The official image on docker-hub is here:
https://hub.docker.com/_/node/

## create image 

~~~sh
docker build -t tuya-mqtt . 
~~~

## docker use

see sample compose.yml for hints how to use tuya-mqtt bridge in docker together with eclipse mosquitto.

Be aware, as long the tuya-mqtt container is not exposed to host-network,
it can't find ip-addresses of tuya devices for itself.
You need to provide them in your devices.conf (see example).

debugging can be switched on with setting enviroment DEBUG, (example in compose.yml_sample).
as argument for docker `-e 'DEBUG=tuya-mqtt:*'`
