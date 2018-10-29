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
    }
}