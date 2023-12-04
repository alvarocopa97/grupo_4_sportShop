const path = require('path');
const db = require('../../database/models');
const sequelize = db.sequelize;
const { Op } = require("sequelize");
const moment = require('moment');

//---------------------------
//Dentro del actorsAPIController uso las dos forma de poder llamar a nuestros modelo
//----------------------------------
const productAPIController = {
    'list': (req, res) => {
        db.Product.findAll()
        .then(products => {
            let respuesta = {
                meta: {
                    status : 200,
                    total: products.length,
                    url: '/api/products'
                },
                data: products
            }
                res.json(respuesta);
            })
    },
    
    'detail': (req, res) => {
        db.Product.findByPk(req.params.id)
            .then(products => {
                let respuesta = {
                    meta: {
                        status: 200,
                        total: products.length,
                        url: '/api/products/:id'
                    },
                    data: products
                }
                res.json(respuesta);
            });
    }
    
}

module.exports = productAPIController;