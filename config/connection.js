var connection = mysql.createConnection;
const mysql = require ("mysql");

const connection = mysql.createConnection ({
  host: "localhost", 
  user: "root",
  password: "Ryan1992186",
  database: "business_db"
})
connection.connect()

module.exports = connection;

