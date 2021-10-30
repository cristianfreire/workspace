// faz a conexão com o banco de dadados
const Sequelize = require('sequelize');
const sequelize = new Sequelize('crud_node', 'root', '', {dialect: 'mysql', host: 'localhost'});

module.exports = sequelize;