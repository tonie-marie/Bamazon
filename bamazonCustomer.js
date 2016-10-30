var mysql = require('mysql');
var inquirer = require('inquirer');

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "",
    database: "Bamazon"
})

connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
})

var whatToBuy = function() {
    connection.query("SELECT * FROM Products", function(err, res) {
    	for (var i=0; i<res.length;i++) {
    		console.log(res[i].ItemID + " | " + res[i].ProductName + " | " + "$" + res[i].Price);
    	}
        inquirer.prompt({
            name: "choice",
            type: "rawlist",
            choices: function(value) {
                var choiceArray = [];
                for (var i = 0; i <res.length; i++) {
                    choiceArray.push(res[i].ProductName);
                }
                return choiceArray;
            },
            message: "Which item are you interested in?"
        }).then(function(answer) {
            console.log(answer.choice) //is an object
            var chosenProduct = answer.choice;
            inquirer.prompt({
            	name: "quantity",
            	type: "input",
            	message: "How many units would you like to purchase?"
            }).then(function(answer) {
            	console.log(answer.quantity);
            	connection.query("SELECT StockQuantity FROM Products", function(err, res) {
            		if (err) throw err;
            		console.log("***");
            		console.log(res.StockQuantity);
            		console.log("***");
            	})

            })
        })
    })
};

whatToBuy();
