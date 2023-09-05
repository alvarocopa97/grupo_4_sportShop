const express = require('express'); 
const router = require('./routes');

const app = express(); 
const PORT = process.env.PORT || 3001; 

app.set('view engine', 'ejs');
app.set('views','./src/views');

app.use(express.static('public'));

const productsRouter = require('./routes/products');

app.use('/', router)
app.use('/products', productsRouter);

app.listen(PORT, () => {
  console.log(`running on port ${PORT}`);
}); 

module.exports = app;