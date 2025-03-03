const cds = require("@sap/cds");
cds.on("bootstrap", (app) => {
    console.log("CAP Server running...");
});
module.exports = cds.server;
