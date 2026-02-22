module.exports = {
    uiPort: process.env.PORT || 1880,
    userDir: '/data',
    flowFile: 'flows.json',
    functionGlobalContext: {
        GMAIL_USERID: process.env.GMAIL_USERID,
        GMAIL_PASSWORD: process.env.GMAIL_PASSWORD,
        INFLUX_TOKEN: process.env.INFLUX_TOKEN
    },
    credentialSecret: process.env.NODE_RED_CREDENTIAL_SECRET
}
