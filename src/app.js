const express = require('express'); 
const router = require('./routes');

const app = express(); 
const PORT = process.env.PORT || 3001; 

app.set('view engine', 'ejs');
app.set('views','./src/views');

app.use(express.static('public'));

app.use('/', router)

app.listen(PORT, () => {
  console.log(`running on port ${PORT}`);
}); 

module.exports = app;