import express from "express";
import selectChatGPTtoken from "./selectChatgptToken.js";
import selectUserLiberado from "./selectUserLiberado.js";
import register_user from "./register_user.js";
import register_user_with_uuid_group from "./register_user_with_uuid_group.js";
import select_user from "./select_user.js";
import select_user_with_uuid from "./select_user_with_uuid.js";
import setJsonCookieLeonardoIA from "./setJsonCookieLeonardoIA.js";
import select_leonardo_ia from "./select_leonardo_ia.js";
import select_groups from "./select_groups.js";
import select_email from "./select_email.js";
import select_groups_with_count_users from "./select_groups_with_count_users.js";
import select_chatgpt from "./select_chatgpt.js";
import select_logins_ias from "./select_logins_ias.js";
import setJsonCookieChatgpt from "./setJsonCookieChatgpt.js";
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";
import axios from "axios";
import { format } from "date-fns";

const app = express();

app.use(express.json());

app.use(express.urlencoded({ extended: true }));

const API_asaas = "https://sandbox.asaas.com/api";

const access_token = `$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDAwOTQ3Mjc6OiRhYWNoX2QxYWZjMGViLTczODctNDEyNy1hM2U1LTFhZTA3ZDYxMTEzNw==`;

function reverse(s) {
  return s.split("").reverse().join("");
}

app.post("/select_chat_gpt_session", async function (req, res) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );
  try {
    // console.log(req.body);
    let token =
      req.headers.authorization && req.headers.authorization.split(" ")[1];
    token = reverse(token);
    token = atob(token);
    jwt.verify(token, "jonas2022#A", async (err, decoded) => {
      if (decoded) {
        let user = await select_user_with_uuid(decoded);
        if (user[0].uuid === decoded) {
          let dbResponse = await selectChatGPTtoken(req.body.uuid_grupo);

          res.json(dbResponse);
        }
      } else {
        res.json({ error: "não foi possivel pegar o token do chatpgt" });
      }
    });
  } catch {
    res.json({ error: "não foi possivel pegar o token do chatpgt" });
  }
});

app.post("/register_user", async function (req, res) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );
  let passwordHashed = await bcrypt.hash(req.body.password, 10);
  // console.log(passwordHashed)
  try {
    let plano = "month";
    let dbResponse = await register_user(
      req.body.nome,
      req.body.email,
      passwordHashed,
      plano
    );
    res.json(dbResponse);
  } catch {
    res.json({ error: "email já existe em nosso banco de dados" });
  }
});

app.post("/update_chatgpt", async function (req, res) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );

  try {
    let dbResponse = await setJsonCookieChatgpt(
      req.body.cookie_chatgptt,
      req.body.uuid_grupoo
    );
    res.json(dbResponse);
  } catch {
    res.json({ error: "erro no update chatgpt" });
  }
});

app.get("/select_ia_name", async function (req, res) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );

  // console.log(passwordHashed)
  try {
    let dbResponse = await select_chatgpt();
    res.json(JSON.parse(dbResponse[0].jsonvalue));
  } catch {
    res.json({ error: "erro no select_chatgpt leonardo ia" });
  }
});

app.get("/select_limit_group", async function (req, res) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );

  // console.log(passwordHashed)
  try {
    let dbResponse = await select_chatgpt();
    res.json(JSON.parse(dbResponse[0].jsonvalue));
  } catch {
    res.json({ error: "erro no select_chatgpt leonardo ia" });
  }
});

app.get("/select_groups", async function (req, res) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );

  try {
    let dbResponse = await select_groups();
    res.json(dbResponse);
  } catch {
    res.json({ error: "erro no update leonardo ia" });
  }
});

app.get("/select_logins", async function (req, res) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );

  // console.log(passwordHashed)
  try {
    let dbResponse = await select_logins_ias(req.query.ia_name);
    res.json(dbResponse);
  } catch {
    res.json({ error: "erro no update leonardo ia" });
  }
});

app.post("/update_leonardo_ia", async function (req, res) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );

  // console.log(passwordHashed)
  try {
    let dbResponse = await setJsonCookieLeonardoIA(req.body.jsoncookie);
    res.json(dbResponse);
  } catch {
    res.json({ error: "erro no update leonardo ia" });
  }
});

app.get("/select_leonardo_ia", async function (req, res) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );

  // console.log(passwordHashed)
  try {
    let dbResponse = await select_leonardo_ia();
    res.json(JSON.parse(dbResponse[0].jsonvalue));
  } catch {
    res.json({ error: "erro no update leonardo ia" });
  }
});

app.post("/login_user", async function (req, res) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );
  try {
    let dbResponse = await select_user(req.body.email);

    const userAllowed = await bcrypt.compare(
      req.body.senha,
      dbResponse[0].senha
    );

    if (userAllowed) {
      let acessToken = jwt.sign(dbResponse[0].uuid, "jonas2022#A");
      acessToken = btoa(acessToken);
      acessToken = reverse(acessToken);
      return res.json({
        msg: "usuário logado",
        nome: dbResponse[0].nome,
        acessToken,
        uuid_grupo: dbResponse[0].uuid_grupo,
        liberado: dbResponse[0].liberado,
      });
    } else {
      return res.json({ error: "usuário ou senha invalidos" });
    }
  } catch {
    return res.json({ error: "usuário ou senha invalidos" });
  }
});

app.post("/verify_if_exist_email_in_db", async function (req, res) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );
  try {
    let dbResponse = await select_email(req.body.email);
    if (dbResponse[0]) {
      res.json({ emailMsg: "exist" });
    } else {
      res.json({ emailMsg: "not exist" });
    }
  } catch {}
});

app.get("/verify_if_user_is_active", async function (req, res) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );
  try {
    let token =
      req.headers.authorization && req.headers.authorization.split(" ")[1];
    token = reverse(token);
    token = atob(token);
    jwt.verify(token, "jonas2022#A", async (err, decoded) => {
      if (decoded) {
        let user = await select_user_with_uuid(decoded);
        if (user[0].uuid === decoded) {
          let dbResponse = await selectUserLiberado(decoded);

          res.json(dbResponse[0].liberado);
        }
      } else {
        res.json({ error: "não foi possivel pegar o token do chatpgt" });
      }
    });
  } catch {}
});

app.post("/send_payment_credit_card", async function (req, res) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );
  try {
    let response_customers = await axios.post(
      `${API_asaas}/v3/customers`,
      {
        name: req.body.nome_completo,
        cpfCnpj: req.body.cpf,
        email: req.body.email,
        phone: req.body.phoneNumber,
        mobilePhone: req.body.phoneNumber,
        address: req.body.endereco,
        addressNumber: req.body.numero_endereco,
        complement: req.body.complemento,
        province: req.body.bairro,
        postalCode: req.body.cep,
      },
      {
        headers: {
          "Content-Type": "application/json",
          "User-Agent": "criatools-user-agent",
          access_token: access_token,
        },
      }
    );

    const hoje = new Date();
    let cycle;
    let valueRs;
    if (req.body.cycle == "MONTHLY") {
      cycle = "MONTHLY";
      valueRs = 49.9;
    }
    if (req.body.cycle == "QUARTERLY") {
      cycle = "QUARTERLY";
      valueRs = 119.7;
    }
    if (req.body.cycle == "YEARLY") {
      cycle = "YEARLY";
      valueRs = 358.8;
    }

    let response = await axios.post(
      `${API_asaas}/v3/subscriptions`,
      {
        customer: response_customers.data.id,
        billingType: "CREDIT_CARD",
        nextDueDate: format(hoje, "yyyy-MM-dd"),
        value: valueRs,
        cycle: cycle,
        description: "Assinatura Criatools",
        creditCard: {
          holderName: req.body.holdername,
          number: req.body.card_number,
          expiryMonth: req.body.card_month,
          expiryYear: req.body.card_year,
          ccv: req.body.card_cvv,
        },
        creditCardHolderInfo: {
          name: req.body.nome_completo,
          email: req.body.email,
          cpfCnpj: req.body.cpf,
          postalCode: req.body.cep,
          addressNumber: req.body.numero_endereco,
          addressComplement: null,
          phone: req.body.phoneNumber,
          mobilePhone: req.body.phoneNumber,
        },
      },
      {
        headers: {
          "Content-Type": "application/json",
          "User-Agent": "criatools-user-agent",
          access_token: access_token,
        },
      }
    );
    if (response.data.status === "ACTIVE") {
      // REGISTRA USUÁRIO COM UUID DO GRUPO CERTO
      let groupsMenorQue100 = await select_groups_with_count_users();
      let uuidGroupsMenorQue100 = groupsMenorQue100[0].uuid_grupo;
      let id_subscription = response.data.id;
      let customer = response.data.customer;
      let asaas_data = JSON.stringify(response.data);

      let passwordHashed = await bcrypt.hash(req.body.password, 10);
      // console.log(passwordHashed)
      let dbResponse = await register_user_with_uuid_group(
        req.body.nome_completo,
        req.body.email,
        passwordHashed,
        cycle,
        uuidGroupsMenorQue100,
        id_subscription,
        customer,
        asaas_data
      );
      res.send(response.data);
    } else {
      res.json({ erro: "Ocorreu algum erro, por favor contate o suporte" });
    }
  } catch (err) {
    res.send(err);
  }
});

app.listen(3344);
