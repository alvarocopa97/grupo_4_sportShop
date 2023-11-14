const express = require('express');
const { controladorHome, controladorLogin, controladorCarrito, controladorRegister} = require('../controllers');

const router = express.Router();


router.get('/', controladorHome);

router.get('/carrito', controladorCarrito);

//router.get('/editar', controladorEditar);
//router.post('/update', controladorEditar);


module.exports = router;