import mysql from 'mysql'

const pool = mysql.createPool({
    connectionLimit: 100,
    host: "localhost",
    user: "root",
    password: "jonas2022#A",
    database: "criatools"
});

export default pool