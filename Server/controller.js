const axios = require('axios')
const reviewModels = require('../db/index.js')


module.exports = {

    getRatings: (req, res) => {
        let listingId = [req.params.id];
        reviewModels.getRating(listingId, (err, data) => {
            if (err) {
                console.error(err);
            } else {
                res.send(data);
            }
        })
    },


    getUser:  (req, res) => {
        console.log("IN GET USER")
        let listingId = [req.params.id];
    reviewModels.getJoinInformation(listingId, (err, data) => {
            if (err) {
                
                console.log('There is an error in GetUser : ', JSON.stringify(err));
            } 
            else {
                res.send(data);
            }
        })
    },

    getSearch: (req, res) => {
        let listingId = [req.params.id, req.body.words];
        reviewModels.getSearchInformation(listingId, (err, data) => {
            if (err) {
                console.error(err);
            } else {
                res.send(data);
            }
        })
    },

    getAverages: (req, res) => {
        let listingId = [req.params.id];
        reviewModels.getOverallAverage(listingId, (err, data) => {
            if (err) {
                console.error(err);
            } else {
                res.send(data);
            }
        })
    }
}