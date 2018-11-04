const express = require('express')
const router = express.Router()
const path = require('path')
const reviewController = require('./controller.js')

router.get('/rating/:id', reviewController.getRatings)
router.get('/average/:id', reviewController.getAverages)
router.get('/user/:id',reviewController.getUser)
router.post('/search/:id', reviewController.getSearch)

router.get('/rooms/*', (req,res) => {
    res.setHeader('content-type', 'text/html')
    res.sendFile(path.join(__dirname + '/../Client/dist/index.html'))
}); 

module.exports = router