const express = require('express');
const app = express();
const port = 3000;
const bodyParser = require('body-parser')
const router = require('./routes.js')
const cors = require('cors')
app.use(cors())
app.use(express.static(__dirname + '/../Client/dist'));
app.use(bodyParser.json())
app.use('/', router)


app.listen(port, () => console.log(`Example app listening on port ${port}!`))



   