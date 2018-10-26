const express = require('express');
const app = express();
const port = 3000;
const bodyParser = require('body-parser')
const morgan  = require('morgan')
app.use(express.static(__dirname + '/../Client/dist'));
app.use(bodyParser.json())
const router = require('./routes.js')
app.use('/', router)

app.listen(port, () => console.log(`Example app listening on port ${port}!`))



    app.get ('/', function(req,res){
        res.render('/')
      })