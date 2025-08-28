const MESSAGES = {
    sucess: {
        // Confirmações
        
    },

    failure: {
        // Erros
        FM0001: `Username and password do not match any user in this service`,
        FM0002: `Username is required`,
        FM0003: `Password is required`,
        FM0004: `You can only access '/inventory.html' when you are logged in.`,
        FM0005: `Sorry, this user has been locked out.`
    },

    alert: {
        // Alertas
    }
}

module.exports = { MESSAGES }