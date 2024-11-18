import pool from './pool.js'

function select(uuid){
    return new Promise((resolve, reject) => {
        pool.getConnection((error, connection) => {
            if (error) throw error;
            connection.query(`
                SELECT * FROM user WHERE uuid = ?;
            `, [uuid], function(error, results, fields) {
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