const express = require('express');
const { indexControllers, loginControllers, registerControllers, agregarProdControllers, detalleProdControllers,productCartControllers} = require('../controllers');

const router = express.Router();

router.get('/',indexControllers)
router.get('/agregar-producto',agregarProdControllers)
router.get('/login',loginControllers)
router.get('/registro',registerControllers)
router.get('/detalleProd',detalleProdControllers)
router.get('/productCart',productCartControllers)

module.exports = router;