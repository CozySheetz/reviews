const axios = require ('axios')
const reviewModels = require ('../db/index.js')


module.exports = {

    getRatings: (req, res) => {
        let params = [req.query.listingId]
        reviewModels.getRating(params,(err, data) => {
            if (err) {
                console.error(err)
            } else {
            
            res.send(data)
            }
        })
    },
    

    getUser: (req,res) => {
      
        let params = [req.query.listingId]
        reviewModels.getJoinInformation(params, (err,data) =>{
            if(err){
            console.error(err)
            } else{
                res.send(data)
            }
        })
    },

    getSearch: (req,res) => {
        console.log('req.query',req.query)
        console.log('req.body',req.body)
        let params = [req.body.listingId, req.body.words]
        reviewModels.getSearchInformation(params,(err,data) => {
            if (err) {
             console.error(err)
            } else {
                res.send(data)
            }
        })
    },

    getAverages: (req,res) => {
        let params = [req.query.listingId];
        console.log('IN AVERAGES')
        console.log('REQ QUERY', req.query)
        reviewModels.getOverallAverage(params, (err,data) =>{
            if(err){
            console.error(err)
            } else{
                res.send(data)
            }
        })
    }
}