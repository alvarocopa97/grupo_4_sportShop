const fs= require('fs');
const path = require('path');

const productsFilePath= path.join(__dirname, '../data/products.json');
const products = JSON.parse(fs.readFileSync(productsFilePath,'utf-8'))


const controller = {

    detail:(req,res)=>{
        const id= req.params.id;
        const product = products.find(p=> p.id ==id );
        res.render('detail',{
            product,
        })
    },

    edit:(req,res)=>{
        const id= req.params.id;
        const productEdit = products.find(p=> p.id ==id );

        res.render('editar-producto',{
            productEdit
        })
    },

    create:(req,res)=>{
        res.render('agregar-product')
    },

    store:(req,res)=>{
        res.send('recibi el formulario correctamente')
    },

    update:(req,res)=>{
        res.send('recibi el formulario de edicion correctamente')
    },
}

module.exports = controller;