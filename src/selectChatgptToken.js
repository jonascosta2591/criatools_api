import pool from "./pool.js";

function select(uuid_grupo) {
  return new Promise((resolve, reject) => {
    pool.getConnection((error, connection) => {
      if (error) throw error;
      connection.query(
        `
                SELECT * FROM chatgpt WHERE uuid_grupo = ?;
            `,
        [uuid_grupo],
        function (error, results, fields) {
          if (error) {
            reject(error);
          }
          connection.destroy();

          resolve(results);
        }
      );
    });
  });
}

export default select;
