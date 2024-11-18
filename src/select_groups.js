import pool from "./pool.js";
import crypto from "crypto";

function insertjsonCookieChatgpt() {
  return new Promise((resolve, reject) => {
    pool.getConnection((error, connection) => {
      if (error) throw error;
      connection.query(
        `
                SELECT * FROM grupos
            `,
        [],
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

export default insertjsonCookieChatgpt;
