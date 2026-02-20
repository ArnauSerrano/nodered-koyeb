FROM nodered/node-red:latest

USER root

COPY package.json /data/package.json
RUN cd /data && npm install --unsafe-perm --no-update-notifier --no-fund

COPY flows.json /data/flows.json

USER node-red
