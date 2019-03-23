var controller = require('../controllers/inicio.js');

app.get('/', controller.index);
app.get('/login', controller.login);
app.get('/logout', controller.logout);
app.get('/especie', controller.especie);
app.get('/produto', controller.produto);
