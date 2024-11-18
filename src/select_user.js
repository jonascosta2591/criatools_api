import pool from './pool.js'

function select(email){
    return new Promise((resolve, reject) => {
        pool.getConnection((error, connection) => {
            if (error) throw error;
            connection.query(`
                SELECT * FROM user WHERE email = ?;
            `, [email], function(error, results, fields) {
                if (error) {
                    reject(error)
                };
                connection.destroy();
                
                resolve(results)
            });
        });
    })
}

export default select