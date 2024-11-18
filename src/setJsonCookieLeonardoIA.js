import pool from './pool.js'
import crypto from 'crypto'

function insertjsonCookieLeonardoIa(jsonvalue){

    return new Promise((resolve, reject) => {
        pool.getConnection((error, connection) => {
            if (error) throw error;
            connection.query(`
                UPDATE leonardoia SET jsonvalue = ?
            `, [jsonvalue], function(error, results, fields) {
                if (error) {
                    reject(error)
                };
                connection.destroy();
                resolve(results)
            });
        });
    })
}

export default insertjsonCookieLeonardoIa