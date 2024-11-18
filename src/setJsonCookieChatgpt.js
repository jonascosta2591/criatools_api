import pool from "./pool.js";
import crypto from "crypto";

function insertjsonCookieChatgpt(cookie_chatgpt, uuid_grupo) {
  return new Promise((resolve, reject) => {
    pool.getConnection((error, connection) => {
      if (error) throw error;
      connection.query(
        `
                UPDATE chatgpt SET cookie_chatgpt = ? WHERE uuid_grupo = ?
            `,
        [cookie_chatgpt, uuid_grupo],
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
