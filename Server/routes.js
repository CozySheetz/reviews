const express = require('express')
const router = express.Router()
const path = require('path')
const reviewController = require('./controller.js')

router.get('/rating/:id', reviewController.getRatings)
router.get('/average', reviewController.getAverages)
router.get('/user',reviewController.getUser)
router.post('/search', reviewController.getSearch)


router.get('/*', (req,res) => {


    res.sendFile(path.join(__dirname + '/../Client/dist/index.html'))
}); 

module.exports = router