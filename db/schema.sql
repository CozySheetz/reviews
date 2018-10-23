const mysql = require('mysql')

const db = mysql.createConnection({
  user: 'root',
  password: 'Annabelle',
  database: 'reviews' 
})


CREATE TABLE IF NOT EXISTS user (
    id INT NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(15) NOT NULL,
    lastName VARCHAR(30) NOT NULL,
    phoneNumber VARCHAR (15) NOT NULL,
    picture VARCHAR(50),
    email VARCHAR (30) NOT NULL,
    workemail VARCHAR (30) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS listing (
    id VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS booking (
   id INT NOT NULL AUTO_INCREMENT,
    checkIn DATE NOT NULL,
    checkOut DATE NOT NULL,
    PRIMARY KEY (id),
    listingID INT,
    userId INT, 

    FOREIGN KEY (listingId)
    REFERENCES listing(id),

    FOREIGN KEY (userId)
    REFERENCES user(id)

);

CREATE TABLE IF NOT EXISTS reviews (
    id INT NOT NULL AUTO_INCREMENT,
    accuracy INT NOT NULL, 
    communication INT NOT NULL, 
    cleanliness INT NOT NULL, 
    locat INT NOT NULL, 
    checkIn INT NOT NULL, 
    val INT NOT NULL, 
    overview VARCHAR(100), 
    listingId INT,
    userId INT, 
    bookingId INT, 

    PRIMARY KEY(id),

    FOREIGN KEY (listingId)
    REFERENCES listing(id),

    FOREIGN KEY (userId)
    REFERENCES user(id),

    FOREIGN KEY (bookingId)
    REFERENCES booking(id)
);