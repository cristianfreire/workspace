module.exports = {
    HOST: "localhost",
    USER: "root",
    PASSWORD: "",
    DB: "testdb",
    dialect: "mysql",
    poll: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    }
};