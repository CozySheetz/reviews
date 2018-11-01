const express = require('express')
const router = express.Router()
const reviewController = require('./controller.js')

router.get('/rating', reviewController.getRatings)
// router.get('/reviews', reviewController.getReviews)
router.get('/user',reviewController.getUser)
router.post('/search', reviewController.getSearch)




module.exports = router