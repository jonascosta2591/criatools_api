import mysql from 'mysql'

const pool = mysql.createPool({
    connectionLimit: 100,
    host: "localhost",
    user: "root",
    password: "",
    database: "criatools"
});

export default pool