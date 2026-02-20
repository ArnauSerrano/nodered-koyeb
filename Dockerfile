# Utilitzem la imatge oficial de Node-RED.
# Aquesta imatge ja inclou:
# - Node.js instal·lat
# - Node-RED configurat
# - Els nodes "core" per defecte
FROM nodered/node-red:latest

# Canviem temporalment a usuari root.
# Ho fem perquè necessitem permisos per instal·lar dependències amb npm.
# (La imatge de Node-RED per defecte no treballa com a root per seguretat.)
USER root

# Copiem el fitxer package.json dins del directori /data del contenidor.
# Aquest fitxer conté la llista de nodes addicionals que volem instal·lar
# (per exemple node-red-dashboard o node-red-contrib-influxdb).
COPY package.json /data/package.json

# Entrem al directori /data i instal·lem les dependències indicades
# al package.json.
# --unsafe-perm → permet instal·lacions correctes dins Docker
# --no-update-notifier → evita missatges innecessaris
# --no-fund → evita missatges de finançament de paquets
RUN cd /data && npm install --unsafe-perm --no-update-notifier --no-fund

# Copiem el fitxer flows.json dins /data.
# Aquest fitxer conté el flow exportat de Node-RED
# (nodes, connexions, configuracions, etc.)
COPY flows.json /data/flows.json

# Tornem a l'usuari original "node-red".
# Això és una bona pràctica de seguretat:
# el contenidor NO s'executa com a root en producció.
USER node-red
