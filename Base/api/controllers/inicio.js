var Controller = require('../models/inicio.js');

module.exports = {

  index,
  login,
  logout,
  especie,
  produto
}


function index(req, res) {
  res.render('../views/inicio/index.ejs', { title: 'Estágio', nome: 'Lucas' });
}

function login(req, res) {
  res.render('../views/inicio/login.ejs', { title: 'login' });
}

function logout(req, res) {
  res.render('../views/inicio/logout.ejs', { title: 'logout' });
}

function especie(req, res) {
  res.render('../views/Espécie/especie.ejs', { title: 'logout' });
}

function produto(req, res) {
  res.render('../views/Produto/produto.ejs', { title: 'logout' });
}