const express = require('express');
const router = express.Router();

// ************ Controller Require ************
const productsController = require('../controllers/productsController');

/*** GET ALL PRODUCTS ***/ 
router.get('/detail/:id', productsController.detail); 
router.get('/edit/:id', productsController.edit); 
router.post('/edit/:id', productsController.update); 

router.get('/create', productsController.create); 
router.post('/', productsController.store); 

module.exports = router;