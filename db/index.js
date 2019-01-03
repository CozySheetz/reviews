var mysql = require('mysql');


var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Annabelle',
    database: 'review'
});

// connect to RDS

// var connection = mysql.createConnection({
//     host: 'reviewz.cv4d8qjavmer.us-east-2.rds.amazonaws.com',
//     user: 'ELang7',
//     database: 'review',
//     password: '0Rangesoda',
//     port:3306
// });

connection.connect(function (err) {
    if (err) {
        console.error('error', err);
        return;
    }

    console.log('Connected to mysql');
});

module.exports = {

    getOverallAverage: (params,cb) => {
        let info= `SELECT (AVG(accuracy) + AVG(communication) + AVG(cleanliness) + AVG(locat) + AVG(checkIn) + AVG(val) )/6 'averages' FROM reviews WHERE listingId= (?)`;
        connection.query(info, params, (err, data) => {
            if (err) {
                console.error(err);
            } else {
                cb(null, data);
            }
        });
    },

    getRating: (params,cb) => {
        let info = `SELECT AVG(accuracy)'Accuracy', AVG(communication) 'Communication', AVG(cleanliness) 'Cleanliness', AVG(locat) 'Location', AVG(checkIn) 'Check-in', AVG(val) 'Value' FROM reviews WHERE listingId= (?)`;
        connection.query(info, params, (err, data) => {
            if (err) {
                console.error(err);
            } else {
                cb(null, data);
            }
        });
    },


    getJoinInformation: (listingId, cb) => {
        let info = `SELECT first_name,last_name, picture, dateCreated, overview from user u inner join reviews r on u.id=r.userId WHERE listingId= (?) ORDER BY r.dateCreated DESC`;

        connection.query( info, listingId, (err, data) => {
            if (err) {
                console.log('error in sql get join', err);
            } else {
                cb( null, data);
            }
        });

    },
    getSearchInformation : (params,cb) => {
    
        let info = `SELECT first_name,last_name, picture, dateCreated, overview from user u inner join reviews r on u.id=r.userId WHERE (listingId = (?) AND MATCH (overview) AGAINST (? IN NATURAL LANGUAGE MODE))`;
        
        connection.query(info, params, (err, data) => {
            if (err) {
                console.log('error in sql get search', err);
            } else {

                cb(null, data);
            }
      
        });
    }
}