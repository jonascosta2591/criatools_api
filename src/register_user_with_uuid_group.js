import pool from "./pool.js";
import crypto from "crypto";

function insert(
  nome_completo,
  email,
  senha,
  cycle,
  uuid_group,
  id_subscription,
  customer_id,
  asaas_data
) {
  const uuid = crypto.randomUUID();

  return new Promise((resolve, reject) => {
    pool.getConnection((error, connection) => {
      if (error) throw error;
      connection.query(
        `
                INSERT INTO user (uuid, nome, email, senha, plano, liberado, uuid_grupo, id_subscription, customer_id, asaas_data) VALUES (?, ?, ?, ?, ?, 1, ?, ?, ?, ?);
            `,
        [
          uuid,
          nome_completo,
          email,
          senha,
          cycle,
          uuid_group,
          id_subscription,
          customer_id,
          asaas_data,
        ],
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

export default insert;
