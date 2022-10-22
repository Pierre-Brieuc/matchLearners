const express =  require('express');
const cookieParser = require('cookie-parser');
const router = require('./routes/routes.js');
const server = express();

server.use(express.json());
server.use(cookieParser());
server.set('view engine', 'ejs');
server.set('views','./views');

server.use(router);


