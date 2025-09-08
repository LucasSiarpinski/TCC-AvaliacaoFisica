const express = require("express");
const cors = require("cors");

const app = express(); // cria a instância do express

// configurações do CORS
const corsOptions = {
  origin: "*", // em produção, restrinja isso
  methods: "GET,HEAD,PUT,PATCH,POST,DELETE",
  allowedHeaders: "Content-Type, x-auth-token",
};

app.use(cors(corsOptions));
app.use(express.json()); // para aceitar JSON no body

// rota de teste
app.get("/", (req, res) => {
  res.send("Servidor rodando com Express e CORS configurado!");
});

// inicia o servidor
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
