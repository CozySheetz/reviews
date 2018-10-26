-- const mysql = require('mysql')

-- const db = mysql.createConnection({
--   user: 'root',
--   password: 'Annabelle',
--   database: 'CozyReviews' 
-- })

-- mysql -u root -p < db/schema.sql
DROP DATABASE IF EXISTS review;
CREATE DATABASE IF NOT EXISTS review;

use review; 

CREATE TABLE IF NOT EXISTS user (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    phone VARCHAR (15) NOT NULL,
    picture VARCHAR(50),
    email VARCHAR (30) NOT NULL,
    work_email VARCHAR (30) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE  IF NOT EXISTS listing (
    id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS booking (
    id INT NOT NULL AUTO_INCREMENT,
    check_in DATE NOT NULL,
    check_out DATE NOT NULL,
    PRIMARY KEY (id),
    listingId INT,
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
    overview VARCHAR(1000), 
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