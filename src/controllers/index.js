const fs= require('fs');
const path = require('path');


const indexControllers = (req,res) =>{
    res.render('index');
}
const agregarProdControllers = (req,res) =>{
    res.render('agregar-product');
}
module.exports = {
    indexControllers,
    agregarProdControllers,
}