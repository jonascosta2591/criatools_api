import express from 'express';
import bodyParser from 'body-parser';
import cors from 'cors';
import Stripe from 'stripe';

const stripe = new Stripe('sk_test_51Lr6W1L1NJYG3fmaqbXKLGGBSD7WR33Wcq9RmGTB7YhtlI8GeoQ8IZqnEUoRfRoAgn26aQ0XPmIqSJJWUFbATYQS00zwfbqBN8', { apiVersion: '2020-08-27' });
const app = express();
app.use(cors());
app.use(bodyParser.json());

app.post('/create-setup-intent', async (req, res) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  const { email } = req.body;

  try {
    // Cria um cliente
    const customer = await stripe.customers.create({
      email: email,
    });

    // Cria um SetupIntent para configurar o método de pagamento
    const setupIntent = await stripe.setupIntents.create({
      customer: customer.id,
    });

    res.send({
      clientSecret: setupIntent.client_secret,
      customerId: customer.id,
    });
  } catch (error) {
    res.status(500).send({ error: error.message });
  }
});

app.post('/subscribe', async (req, res) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  const { customerId, paymentMethodId } = req.body;

  try {
    // Atualiza o cliente com o método de pagamento
    await stripe.paymentMethods.attach(paymentMethodId, {
      customer: customerId,
    });

    await stripe.customers.update(customerId, {
      invoice_settings: {
        default_payment_method: paymentMethodId,
      },
    });

    // Cria um produto se necessário
    let product = await stripe.products.list({ limit: 1 });
    if (product.data.length === 0) {
      product = await stripe.products.create({
        name: 'Assinatura Mensal',
      });
    } else {
      product = product.data[0];
    }

    // Cria um plano de assinatura mensal
    let price = await stripe.prices.list({ product: product.id, limit: 1 });
    console.log(price)
    const subscription = await stripe.subscriptions.create({
        customer: customerId,
        items: [{ price: price.data[0].id }]
    });

    // console.log(subscription)
    if (subscription.latest_invoice) {
      res.send({ success: true, subscriptionId: subscription.id });
    } else {
      res.send({ success: false, error: 'Pagamento falhou' });
    }
  } catch (error) {
    res.status(500).send({ error: error.message });
  }
});

app.listen(3000, () => {
  console.log('Servidor rodando na porta 3000');
});
