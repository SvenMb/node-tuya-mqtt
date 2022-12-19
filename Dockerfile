FROM node

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install git

RUN set -ex \
    && cd /opt \
    && git clone https://github.com/TheAgentK/tuya-mqtt \
    && cd tuya-mqtt \
    && npm install \
    && mkdir config \
    && ln -s config/config.json . \
    && ln -s config/devices.conf .

VOLUME ["/opt/tuya-mqtt/config"]

WORKDIR /opt/tuya-mqtt

ENV DEBUG=''

ENTRYPOINT ["node", "tuya-mqtt.js"]
