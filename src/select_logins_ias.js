import pool from './pool.js'
import crypto from 'crypto'

function selectsessioncookie_leonardoia(ia_name){

    return new Promise((resolve, reject) => {
        pool.getConnection((error, connection) => {
            if (error) throw error;
            connection.query(`
                SELECT * FROM logins_ias WHERE nome_ia = ?
            `, [ia_name], function(error, results, fields) {
                if (error) {
                    reject(error)
                };
                connection.destroy();
                resolve(results)
            });
        });
    })
}

export default selectsessioncookie_leonardoia