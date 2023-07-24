const path = require('path');
var express = require('express');
var app = express();
app.use(express.static(path.join(__dirname,'./public')))

app.get('/', function (req, res) {
   res.sendFile(path.join(__dirname,'./views/home.html'));
})

app.listen(3001, ()=> console.log('servidor corriendo'))