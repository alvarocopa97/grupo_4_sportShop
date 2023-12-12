const { isUtf8 } = require('buffer');
const { json } = require('express');
const fs = require('fs');
const path = require('path');
const db = require('../database/models')


const dato = () => {
    const rawDatos = fs.readFileSync(path.resolve(__dirname, '../datos/datos.json'), 'utf-8')

    return JSON.parse(rawDatos);
}

const controladorProducts = {
    productCreate: function (req, res) {
        res.render('create')
    },
    detail: function (req, res) {
        const id = req.params.id;
        db.Product.findByPk( id, {raw:true})
        .then(products => {
            return res.render('productDetail', {product:products})
        })
    },
    create: function (req, res) {
        db.Product.create({
            name: req.body.name,
            price: req.body.price,
            img: req.file.filename,
            envio: "$" + req.body.envio,
            description : req.body.description
        })
        .then(products => {
            res.redirect('/products/listado')
        })
    },
    producto: function (req, res) {
        db.Product.findAll()
            .then(products => {
                return res.render('productList', {products:products})
            })
    },
    destroy: (req, res) => {
        //let productos = dato();
        const id = +req.params.id;
        db.Product.destroy ({
            where : {
                id
            } 
        }).then(products => {
            res.redirect('/products/listado')
        })
    },

    editar: (req, res) => {
        //const products = dato()
        const id = req.params.id;
        db.Product.findByPk( id, {raw:true})
        .then(products => {
            return res.render('editar', {product:products})
        })
    },

    update: (req, res) => {
        //let products = dato();
        const id=+ req.params.id;
        db.Product.update ({
            name: req.body.name,
            price: req.body.price,
            img: req.file.filename,
            envio: "$" + req.body.envio,
            description : req.body.description
        },
        {
            where : {
                id
            } 
        }).then(products => {
            res.redirect('/products/listado')
        })

    },
    shopping: function (req, res) {
        const id = req.params.id;
    
        if (!id) {
            return res.render('carritoVacio'); 
        }
    
        db.Product.findByPk(id, { raw: true })
            .then(product => {
                if (!product) {
                    return res.render('carritoVacio'); 
                }
                return res.render('carrito', { product: product }); 
            })
            .catch(err => {
                console.error(err);
                return res.status(500).send('Error al procesar la solicitud');
            });
    }
    
}


module.exports = controladorProducts