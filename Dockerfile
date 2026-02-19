# Imatge oficial de Node-RED
# Inclou Node.js i tots els nodes core
FROM nodered/node-red:latest

# Treballem dins del directori d’usuari de Node-RED
WORKDIR /data

# Copiem definició de dependències
COPY package.json ./

# Instal·lem nodes NO core
RUN npm install --unsafe-perm --no-update-notifier --no-fund

# Copiem el flow exportat
COPY flows.json /data/flows.json

# Port per defecte de Node-RED
EXPOSE 1880
