var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Annabelle',
    database: 'review'
});

connection.connect(function (err) {
    if (err) {
        console.error('error', err);
        return;
    }

    console.log('Connected to mysql');
})

module.exports = {

    getRating: (cb) => {
        let info = `SELECT AVG(accuracy)'Accuracy', AVG(communication) 'Communication', AVG(cleanliness) 'Cleanliness', AVG(locat) 'Location', AVG(checkIn) 'Check-in', AVG(val) 'Value' FROM reviews`
        connection.query(info, (err, data) => {
            if (err) {
                console.error(err);
            } else {
                cb(null, data);
            }
        })
    },

    getUserName: (cb) => {
        let info = `SELECT first_name FROM user`

        connection.query(info, (err, data) => {
            if (err) {
                console.error(err);
            } else {
                cb(null, data);
            }
        })
    },

    getJoinInformation: (cb) => {
        let info = `SELECT first_name,last_name, picture, dateCreated, overview from user u inner join reviews r on u.id=r.userId`

        connection.query(info, (err, data) => {
            if (err) {
                console.log('error in sql get join', err);
            } else {
                cb(null, data);
            }
        })

    },

    getSearchInformation : (params,cb) => {
        let info = `SELECT first_name,last_name, picture, dateCreated, overview from user u inner join reviews r on u.id=r.userId WHERE MATCH (overview) AGAINST (? IN NATURAL LANGUAGE MODE)`
        // let info = `SELECT * FROM reviews WHERE MATCH (overview) AGAINST (? IN NATURAL LANGUAGE MODE)`
        connection.query(info, params, (err, data) => {
            if (err) {
                console.log('error in sql get search', err);
            } else {

                cb(null, data);
            }
      
        })
    }
}