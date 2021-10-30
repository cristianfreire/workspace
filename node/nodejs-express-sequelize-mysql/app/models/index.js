const dbConfig = require("../config/db.config");

const Sequelize = require("sequelize");
const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
    host: dbConfig.HOST,
    dialect: dbConfig.dialect,
    operatorAliases: false,

    poll: {
        max: dbConfig.poll.max,
        min: dbConfig.poll.min,
        acquire: dbConfig.poll.acquire,
        idle: dbConfig.poll.idle
    }
});

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.tutorials = require("./tutorial.model.js") (sequelize, Sequelize);

module.exports = db;