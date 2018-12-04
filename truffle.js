module.exports = {
    // See <http://truffleframework.com/docs/advanced/configuration>
    // for more about customizing your Truffle configuration!
    networks: {
        development: {
            host: "127.0.0.1",
            port: 7545,
            network_id: "*" // Match any network id
        },
        live: {
            host: "127.0.0.1",
            port: 8545,
            network_id: "1", // Match any network id
            gas: 2000000,
            gasPrice: 100000000000
        }
    }
};
