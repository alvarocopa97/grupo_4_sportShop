const express = require('express');
const router = require('./src/routes');
const routerProduct = require('./src/routes/productos');
const userLoggedMiddleware = require('./src/middleware/userLoggedMidddleware');
const routerUser = require('./src/routes/user');
const session = require('express-session');
const apiUsersRouter = require('./src/api/routes/user')
const apiProductsRouter = require('./src/api/routes/product')
const methodOverride = require('method-override');
const app = express ();
const PORT = 3001
const cors = require('cors')
const corsOptions = {
    origin: 'http://localhost:3000', 
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
    preflightContinue: false,
    optionsSuccessStatus: 204,
  };
app.use(cors(corsOptions))
app.use(express.urlencoded({extended:false}));
//app.use(express.json());

app.use('/api/products',apiProductsRouter);

app.use("/api/users",apiUsersRouter);
app.use(methodOverride('_method'));
app.use(session({
    secret: "Secret",
    resave: false,
    saveUninitialized: false,
}));
app.use(userLoggedMiddleware)



app.set('view engine', 'ejs')
app.set('views', './src/views')

app.use("/user",routerUser);
app.use(express.static('public'))
app.use('/products',routerProduct);
app.use(routerUser)
app.use(router);


app.listen(PORT, () =>{
    console.log("Servidor andando");
});
