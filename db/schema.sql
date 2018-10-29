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

insert into user (id, first_name, last_name, phone, picture, email, work_email) values (1, 'Dukey', 'Coffin', '662-671-1102', 'http://www.unionleader.com/storyimage/UL/20170714/NEWS01/170719605/AR/0/AR-170719605.jpg?q=77&stamp=&maxw=800', 'dcoffin0@state.tx.us', 'dcoffin0@answers.com');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (2, 'Linet', 'Shackelton', '915-583-9378', 'https://vetstreet-brightspot.s3.amazonaws.com/1a/2f38b0a0d711e0a2380050568d634f/file/great-dane-1-645mk062411.jpg', 'lshackelton1@paypal.com', 'lshackelton1@utexas.edu');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (3, 'Meggie', 'Denson', '836-239-3777', 'https://vetstreet-brightspot.s3.amazonaws.com/1a/2f38b0a0d711e0a2380050568d634f/file/great-dane-1-645mk062411.jpg', 'mdenson2@jigsy.com', 'mdenson2@imageshack.us');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (4, 'Linoel', 'Silly', '493-365-4235', 'https://vetstreet-brightspot.s3.amazonaws.com/1a/2f38b0a0d711e0a2380050568d634f/file/great-dane-1-645mk062411.jpg', 'lsilly3@marriott.com', 'lsilly3@hp.com');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (5, 'Loy', 'Clowley', '698-198-1283', 'https://vetstreet-brightspot.s3.amazonaws.com/1a/2f38b0a0d711e0a2380050568d634f/file/great-dane-1-645mk062411.jpg', 'lclowley4@elpais.com', 'lclowley4@redcross.org');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (6, 'Tiffy', 'Pirot', '853-981-9222', 'https://vetstreet-brightspot.s3.amazonaws.com/1a/2f38b0a0d711e0a2380050568d634f/file/great-dane-1-645mk062411.jpg', 'tpirot5@wikimedia.org', 'tpirot5@mail.ru');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (7, 'Lottie', 'Harriot', '931-556-0491', 'https://vetstreet-brightspot.s3.amazonaws.com/1a/2f38b0a0d711e0a2380050568d634f/file/great-dane-1-645mk062411.jpg', 'lharriot6@foxnews.com', 'lharriot6@state.gov');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (8, 'Norton', 'Poll', '117-617-2262', 'https://vetstreet-brightspot.s3.amazonaws.com/1a/2f38b0a0d711e0a2380050568d634f/file/great-dane-1-645mk062411.jpg', 'npoll7@instagram.com', 'npoll7@japanpost.jp');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (9, 'Winifred', 'McKmurrie', '665-492-4941', 'https://vetstreet-brightspot.s3.amazonaws.com/1a/2f38b0a0d711e0a2380050568d634f/file/great-dane-1-645mk062411.jpg', 'wmckmurrie8@about.me', 'wmckmurrie8@symantec.com');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (10, 'Webb', 'Gledhill', '775-793-5917', 'https://vetstreet-brightspot.s3.amazonaws.com/1a/2f38b0a0d711e0a2380050568d634f/file/great-dane-1-645mk062411.jpg', 'wgledhill9@cornell.edu', 'wgledhill9@bing.com');

insert into booking (id, check_in, check_out,listingId, userId) values (1, '2018-09-07 07:13:12', '2018-09-09 11:22:28', (select id from listing where id = 1), (select id from user where id = 1));
insert into booking (id, check_in, check_out,listingId, userId) values (2, '2018-02-02 06:13:21', '2018-02-09 18:44:42',(select id from listing where id = 1),(select id from user where id = 2));
insert into booking (id, check_in, check_out,listingId, userId) values (3, '2018-02-01 19:04:21', '2018-04-03 04:17:11',(select id from listing where id = 1), (select id from user where id = 3));
insert into booking (id, check_in, check_out,listingId, userId) values (4, '2018-10-05 11:35:33', '2018-10-15 03:27:55',(select id from listing where id = 1), (select id from user where id = 4));
insert into booking (id, check_in, check_out,listingId, userId) values (5, '2018-05-20 19:26:43', '2018-06-18 23:08:37',(select id from listing where id = 1),(select id from user where id = 5));
insert into booking (id, check_in, check_out,listingId, userId) values (6, '2018-02-18 11:51:05', '2018-04-05 10:56:13',(select id from listing where id = 1),(select id from user where id = 6));
insert into booking (id, check_in, check_out,listingId, userId) values (7, '2018-02-02 00:57:44', '2018-05-31 04:07:59',(select id from listing where id = 1), (select id from user where id = 7));
insert into booking (id, check_in, check_out,listingId, userId) values (8, '2018-03-27 03:37:13', '2018-04-13 17:44:12',(select id from listing where id = 1),(select id from user where id = 8));
insert into booking (id, check_in, check_out,listingId, userId) values (9, '2018-04-09 08:05:58', '2018-05-20 12:55:57',(select id from listing where id = 1),(select id from user where id = 9));
insert into booking (id, check_in, check_out,listingId, userId) values (10, '2017-12-25 05:23:01', '2017-12-27 15:23:22',(select id from listing where id = 1),(select id from user where id = 10));

insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview,listingId,userId,bookingId) values (1, 5, 3, 3, 5, 2, 5, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.',(select id from listing where id = 1), (select id from user where id = 1), (select id from booking where id =1 ));
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview,listingId,userId,bookingId) values (2, 3, 4, 1, 4, 2, 1, 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.',(select id from listing where id = 1), (select id from user where id = 2), (select id from booking where id = 2));
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview,listingId,userId,bookingId) values (3, 1, 2, 1, 4, 4, 1, 'Nunc purus. Phasellus in felis.',(select id from listing where id = 1), (select id from user where id = 3), (select id from booking where id = 3 ));
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview,listingId,userId,bookingId) values (4, 1, 4, 4, 5, 2, 5, 'Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.',(select id from listing where id = 1), (select id from user where id = 4), (select id from booking where id = 4));
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview,listingId,userId,bookingId) values (5, 5, 2, 4, 2, 3, 5, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.',(select id from listing where id = 1), (select id from user where id = 5), (select id from booking where id = 5));
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview,listingId,userId,bookingId) values (6, 2, 5, 1, 2, 3, 5, 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.',(select id from listing where id = 1), (select id from user where id = 6), (select id from booking where id = 6));
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview,listingId,userId,bookingId) values (7, 2, 4, 3, 5, 4, 4, 'Etiam vel augue.',(select id from listing where id = 1), (select id from user where id = 7), (select id from booking where id = 7));
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview,listingId,userId,bookingId) values (8, 1, 4, 3, 3, 5, 5, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', (select id from listing where id = 1), (select id from user where id = 8), (select id from booking where id = 8));
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview,listingId,userId,bookingId) values (9, 3, 3, 5, 3, 3, 4, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', (select id from listing where id = 1), (select id from user where id = 9), (select id from booking where id = 9));
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview,listingId,userId,bookingId) values (10, 5, 5, 2, 4, 4, 3, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', (select id from listing where id = 1), (select id from user where id = 10), (select id from booking where id =10));

insert into listing (id) values (1);
