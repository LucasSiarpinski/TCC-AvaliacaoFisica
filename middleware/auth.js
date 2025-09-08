// middleware/auth.js
const jwt = require("jsonwebtoken");

const auth = (req, res, next) => {
  // Pega o token do cabeçalho
  const token = req.header("x-auth-token");

  // Se não houver token, nega acesso
  if (!token) {
    return res.status(401).json({ msg: "Sem token, autorização negada!" });
  }

  try {
    // Verifica o token com a chave secreta
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    req.user = decoded.user; // Adiciona os dados do usuário na requisição
    next(); // Chama o próximo middleware ou a rota
  } catch (err) {
    res.status(401).json({ msg: "Token inválido!" });
  }
};

module.exports = auth;
