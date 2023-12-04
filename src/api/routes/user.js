const express = require('express');
const router = express.Router();
const usersAPIController = require('../controllers/userController');

//Rutas
//Listado 
router.get('/', usersAPIController.list);
//Detalle 
router.get('/:id', usersAPIController.detail);


module.exports = router;