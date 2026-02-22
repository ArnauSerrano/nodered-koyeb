module.exports = {

    // Port (Koyeb el defineix)
    uiPort: process.env.PORT || 1880,

    // IMPORTANT: secret fix via variable d'entorn
    credentialSecret: process.env.NODE_RED_CREDENTIAL_SECRET,

    // Exposem variables al runtime
    functionGlobalContext: {
        GMAIL_USERID: process.env.GMAIL_USERID,
        GMAIL_PASSWORD: process.env.GMAIL_PASSWORD,
        INFLUX_TOKEN: process.env.INFLUX_TOKEN
    },

    // Directori de treball
    userDir: '/data',

    // Fitxer de flows
    flowFile: 'flows.json'
}
