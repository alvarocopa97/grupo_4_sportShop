const express = require('express');
const router = express.Router();
const productsAPIController = require('../controllers/productController');

//Rutas
//Listado 
router.get('/', productsAPIController.list);
//Detalle 
router.get('/:id', productsAPIController.detail);


module.exports = router;