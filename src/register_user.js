import pool from './pool.js'
import crypto from 'crypto'

function insert(nome, email, senha, plano){
    const uuid = crypto.randomUUID();

    return new Promise((resolve, reject) => {
        pool.getConnection((error, connection) => {
            if (error) throw error;
            connection.query(`
                INSERT INTO user (uuid, nome, email, senha, plano, liberado) VALUES (?, ?, ?, ?, ?, 1);
            `, [uuid, nome, email, senha, plano], function(error, results, fields) {
                if (error) {
                    reject(error)
                };
                connection.destroy();
                resolve(results)
            });
        });
    })
}

export default insert