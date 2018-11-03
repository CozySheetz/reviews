const axios = require ('axios')
const reviewModels = require ('../db/index.js')


module.exports = {

    getRatings: (req, res) => {

        console.log('in get ratings listing id is', req.params.id)
        let params = [req.params.id]
        reviewModels.getRating(params,(err, data) => {
            if (err) {
                console.error(err)
            } else {
            console.log(data)
            res.send(data)
            }
        })
    },
    

    getUser: (req,res) => {
      
        let params = [req.params.id]
        reviewModels.getJoinInformation(params, (err,data) =>{
            if(err){
            console.error(err)
            } else{
                res.send(data)
            }
        })
    },

    getSearch: (req,res) => {
        let params = [req.params.id, req.body.words]
        reviewModels.getSearchInformation(params,(err,data) => {
            if (err) {
             console.error(err)
            } else {
                res.send(data)
            }
        })
    },

    getAverages: (req,res) => {
        let params = [req.params.id];
        reviewModels.getOverallAverage(params, (err,data) =>{
            if(err){
            console.error(err)
            } else{
                res.send(data)
            }
        })
    }
}