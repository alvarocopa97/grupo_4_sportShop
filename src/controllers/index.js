const fs= require('fs');
const path = require('path');


const indexControllers = (req,res) =>{
    res.render('index');
}
const agregarProdControllers = (req,res) =>{
    res.render('agregar-product');
}
const loginControllers = (req,res) =>{
    res.render('login');
}
const registerControllers = (req,res) =>{
    res.render('registro');
}
const detalleProdControllers = (req,res) =>{
    res.render('detalleProd');
}
const productCartControllers = (req,res) =>{
    res.render('productCart');
}
module.exports = {
    indexControllers,
    agregarProdControllers,
    loginControllers,
    registerControllers,
    detalleProdControllers,
    productCartControllers,
}