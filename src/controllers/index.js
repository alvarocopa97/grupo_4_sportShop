const fs= require('fs');
const path = require('path');


const indexControllers = (req,res) =>{
    res.render('index');
}

module.exports = {
    indexControllers,
}