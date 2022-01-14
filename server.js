// Required dependencies
const mysql = require("mysql");
const inquirer = require("inquirer");
require("console.table");

// Connection to MySQL server
const connection = mysql.createConnection({
    host: 'localhost',

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: 'root',

    // Your password
    password: 'YourPassword',
    database: 'employeesDB'
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    
    // runs the app
    firstPrompt();
});