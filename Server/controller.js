const axios = require ('axios')
const reviewModels = require ('../db/index.js')


module.exports = {

    getRatings: (req, res) => {
        reviewModels.getRating((err, data) => {
            if (err) {
                console.error(err)
            } else {
            
            res.send(data)
            }
        })
    },
    

    getUser: (req,res) => {
    
        reviewModels.getJoinInformation((err,data) =>{
            if(err){
            console.error(err)
            } else{
                res.send(data)
            }
        })
    },

    getSearch: (req,res) => {
        let params = [req.body.words]
        reviewModels.getSearchInformation(params,(err,data) => {
            if (err) {
             console.error(err)
            } else {
                res.send(data)
                console.log(data)
            }
        })
    },

    getAverages: (req,res) => {
        reviewModels.getOverallAverage((err,data) =>{
            if(err){
            console.error(err)
            } else{
                res.send(data)
            }
        })
    }
}