// var sequelize = require("sequelize");

// if(process.env.JAWSDB_URL) {
//   //Heroku deployment
//    var connection = mysql.createConnection(process.env.JAWSDB_URL);
// } else {

//     var sequelize = new sequelize("users_db", "root", "Jjb117jjB",{

//         host: "localhost",
//         port: 3306,
//         dialect: "mysql",
        
//             pool:{
//                 max: 5,
//                 min: 0,
//                 idle: 10000
//             }
//     });
// }

// module.exports = sequelize;

var Sequelize = require('sequelize'), connection;

if (process.env.JAWSDB_URL) {
  connection = new Sequelize(process.env.JAWSDB_URL);
} else {
  connection = new Sequelize('users_db', 'root', 'Jjb117jjB', {
    host: 'localhost',
    dialect: 'mysql',
    port: '3306'
  })
};

module.exports = connection;