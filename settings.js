module.exports = {

    // Port del contenidor (Koyeb el passa per env)
    uiPort: process.env.PORT || 1880,

    // Permet usar variables ${VAR} dins dels nodes
    functionGlobalContext: {
    },

    // IMPORTANT: fixa el secret perquè no canviïn les credencials a cada deploy
    credentialSecret: process.env.NODE_RED_CREDENTIAL_SECRET,

    // Directori de treball
    userDir: '/data',

    // Permet llegir variables d'entorn dins dels flows
    env: process.env,

    // Configuració estàndard
    flowFile: 'flows.json'
}
