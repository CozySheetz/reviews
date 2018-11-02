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
    picture VARCHAR(150),
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
    dateCreated VARCHAR(50),
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

    -- FULLTEXT idx (overview)
);

ALTER TABLE reviews ADD FULLTEXT (overview);              

insert into listing  (id) values (1);
insert into listing  (id) values (2);
insert into listing  (id) values (3);
insert into listing  (id) values (4);
insert into listing  (id) values (5);
insert into listing  (id) values (6);
insert into listing  (id) values (7);
insert into listing  (id) values (8);
insert into listing  (id) values (9);
insert into listing  (id) values (10);
insert into listing  (id) values (11);
insert into listing  (id) values (12);
insert into listing  (id) values (13);
insert into listing  (id) values (14);
insert into listing  (id) values (15);
insert into listing  (id) values (16);
insert into listing  (id) values (17);
insert into listing  (id) values (18);
insert into listing  (id) values (19);
insert into listing  (id) values (20);
insert into listing  (id) values (21);
insert into listing  (id) values (22);
insert into listing  (id) values (23);
insert into listing  (id) values (24);
insert into listing  (id) values (25);
insert into listing  (id) values (26);
insert into listing  (id) values (27);
insert into listing  (id) values (28);
insert into listing  (id) values (29);
insert into listing  (id) values (30);
insert into listing  (id) values (31);
insert into listing  (id) values (32);
insert into listing  (id) values (33);
insert into listing  (id) values (34);
insert into listing  (id) values (35);
insert into listing  (id) values (36);
insert into listing  (id) values (37);
insert into listing  (id) values (38);
insert into listing  (id) values (39);
insert into listing  (id) values (40);
insert into listing  (id) values (41);
insert into listing  (id) values (42);
insert into listing  (id) values (43);
insert into listing  (id) values (44);
insert into listing  (id) values (45);
insert into listing  (id) values (46);
insert into listing  (id) values (47);
insert into listing  (id) values (48);
insert into listing  (id) values (49);
insert into listing  (id) values (50);
insert into listing  (id) values (51);
insert into listing  (id) values (52);
insert into listing  (id) values (53);
insert into listing  (id) values (54);
insert into listing  (id) values (55);
insert into listing  (id) values (56);
insert into listing  (id) values (57);
insert into listing  (id) values (58);
insert into listing  (id) values (59);
insert into listing  (id) values (60);
insert into listing  (id) values (61);
insert into listing  (id) values (62);
insert into listing  (id) values (63);
insert into listing  (id) values (64);
insert into listing  (id) values (65);
insert into listing  (id) values (66);
insert into listing  (id) values (67);
insert into listing  (id) values (68);
insert into listing  (id) values (69);
insert into listing  (id) values (70);
insert into listing  (id) values (71);
insert into listing  (id) values (72);
insert into listing  (id) values (73);
insert into listing  (id) values (74);
insert into listing  (id) values (75);
insert into listing  (id) values (76);
insert into listing  (id) values (77);
insert into listing  (id) values (78);
insert into listing  (id) values (79);
insert into listing  (id) values (80);
insert into listing  (id) values (81);
insert into listing  (id) values (82);
insert into listing  (id) values (83);
insert into listing  (id) values (84);
insert into listing  (id) values (85);
insert into listing  (id) values (86);
insert into listing  (id) values (87);
insert into listing  (id) values (88);
insert into listing  (id) values (89);
insert into listing  (id) values (90);
insert into listing  (id) values (91);
insert into listing  (id) values (92);
insert into listing  (id) values (93);
insert into listing  (id) values (94);
insert into listing  (id) values (95);
insert into listing  (id) values (96);
insert into listing  (id) values (97);
insert into listing  (id) values (98);
insert into listing  (id) values (99);
insert into listing  (id) values (100);

insert into user (id, first_name, last_name, phone, picture, email, work_email) values (1, 'Moise', 'Izhak', '655-401-0459', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'mizhak0@virginia.edu', '54.3.174.29');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (2, 'Bree', 'Marner', '789-613-2524', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'bmarner1@illinois.edu', '10.126.53.143');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (3, 'Bevan', 'Gitting', '143-637-0236', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'bgitting2@mozilla.org', '41.191.121.12');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (4, 'Rochell', 'Jacobi', '864-921-6550', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'rjacobi3@ihg.com', '240.172.211.215');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (5, 'Benedicto', 'Kingswood', '422-856-6237', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'bkingswood4@pen.io', '75.154.31.238');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (6, 'Mandel', 'Gowland', '800-287-3034', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'mgowland5@squarespace.com', '165.161.217.44');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (7, 'Dodi', 'Deener', '996-256-3063', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'ddeener6@de.vu', '246.79.2.77');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (8, 'Theodoric', 'Rickeard', '591-894-6072', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'trickeard7@usgs.gov', '133.60.229.76');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (9, 'Woodman', 'Mary', '205-593-1137', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'wmary8@mozilla.com', '199.19.211.87');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (10, 'Calida', 'Bourrel', '229-880-3772', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'cbourrel9@reference.com', '189.213.30.162');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (11, 'Thadeus', 'Feben', '427-274-2420', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'tfebena@amazon.de', '17.132.94.149');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (12, 'Addie', 'Golly', '104-307-1357', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'agollyb@upenn.edu', '78.184.176.76');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (13, 'Trudey', 'Crawley', '759-366-2174', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'tcrawleyc@google.ru', '141.54.91.10');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (14, 'Franni', 'Careswell', '776-576-4809', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'fcareswelld@people.com.cn', '233.95.92.4');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (15, 'Ulises', 'Bullivent', '901-591-4790', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'ubullivente@cpanel.net', '253.247.77.30');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (16, 'Latia', 'de Vaen', '734-718-4053', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'ldevaenf@pinterest.com', '77.198.85.187');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (17, 'Kerwinn', 'Espinos', '144-550-3598', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'kespinosg@so-net.ne.jp', '159.157.115.99');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (18, 'Riane', 'Allicock', '761-103-5319', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'rallicockh@mayoclinic.com', '204.198.146.39');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (19, 'Libbey', 'Clayson', '163-571-2543', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'lclaysoni@netvibes.com', '117.190.51.212');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (20, 'Hilliary', 'Nevett', '944-285-4020', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'hnevettj@usa.gov', '159.209.255.198');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (21, 'Harold', 'Childes', '442-978-0430', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'hchildesk@goo.gl', '9.95.83.144');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (22, 'Alfi', 'Greated', '788-413-3665', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'agreatedl@github.io', '111.76.177.29');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (23, 'Jean', 'Boater', '407-830-8996', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'jboaterm@aol.com', '139.136.236.156');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (24, 'Georgeanne', 'Wegenen', '214-783-3747', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'gwegenenn@google.co.jp', '180.181.148.24');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (25, 'Janet', 'Poynser', '549-786-8197', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'jpoynsero@ask.com', '209.204.206.24');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (26, 'Chance', 'Poulsum', '290-653-7778', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'cpoulsump@bluehost.com', '188.222.139.52');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (27, 'Lilli', 'Paxton', '536-894-5557', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'lpaxtonq@jimdo.com', '251.117.103.21');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (28, 'Gage', 'Blaiklock', '807-614-5266', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'gblaiklockr@eventbrite.com', '14.227.46.246');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (29, 'Rivi', 'Falconar', '942-949-4577', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'rfalconars@wordpress.com', '1.205.41.190');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (30, 'Malissia', 'Dunseath', '400-763-9367', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'mdunseatht@businessinsider.com', '46.3.105.139');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (31, 'Allan', 'Dreini', '203-185-9379', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'adreiniu@jalbum.net', '114.43.190.212');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (32, 'Jonie', 'Mirralls', '723-374-6219', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'jmirrallsv@wikipedia.org', '49.116.241.14');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (33, 'Pyotr', 'Isson', '678-915-1237', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'pissonw@wiley.com', '67.110.77.245');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (34, 'Udale', 'Dedden', '658-505-4183', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'udeddenx@craigslist.org', '247.65.156.206');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (35, 'Denny', 'McGrory', '756-312-9219', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'dmcgroryy@icio.us', '115.176.16.106');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (36, 'Nick', 'Lidster', '543-168-2738', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'nlidsterz@sogou.com', '213.152.140.38');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (37, 'Marylou', 'Feenan', '837-923-5888', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'mfeenan10@elegantthemes.com', '39.255.181.242');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (38, 'Deni', 'Pischoff', '113-473-5540', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'dpischoff11@lycos.com', '228.162.99.40');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (39, 'Jaime', 'O''Hannay', '563-960-6722', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'johannay12@pen.io', '205.230.125.63');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (40, 'Jed', 'Wasmer', '118-100-2490', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'jwasmer13@uiuc.edu', '60.231.103.213');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (41, 'Demetrius', 'Frantz', '387-832-2475', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'dfrantz14@booking.com', '124.106.27.126');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (42, 'Raymund', 'Dawley', '611-403-7162', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'rdawley15@adobe.com', '89.124.152.94');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (43, 'Willem', 'Fasset', '145-196-9373', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'wfasset16@pbs.org', '234.182.184.230');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (44, 'Sebastien', 'Tutt', '768-754-9449', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'stutt17@dropbox.com', '168.179.249.68');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (45, 'Farra', 'Hartman', '911-537-2493', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'fhartman18@deliciousdays.com', '23.107.169.82');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (46, 'Eleonora', 'Ivakin', '110-964-2329', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'eivakin19@nhs.uk', '19.32.83.28');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (47, 'Gardner', 'Goodee', '520-109-8048', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'ggoodee1a@about.com', '231.176.105.57');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (48, 'Adel', 'Galtone', '670-161-6383', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'agaltone1b@wordpress.com', '27.180.254.16');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (49, 'Alden', 'Wathall', '799-580-8213', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'awathall1c@shutterfly.com', '230.66.152.139');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (50, 'Rancell', 'Antonov', '129-960-9310', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'rantonov1d@seesaa.net', '200.162.229.180');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (51, 'Roddy', 'Haddow', '696-396-2262', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'rhaddow1e@marriott.com', '131.134.6.174');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (52, 'Romeo', 'Jakubczyk', '423-819-9207', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'rjakubczyk1f@geocities.jp', '45.171.123.250');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (53, 'Domenic', 'Allden', '870-248-8722', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'dallden1g@gnu.org', '197.244.181.137');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (54, 'Flory', 'Skehens', '614-183-3446', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'fskehens1h@goo.ne.jp', '245.243.133.133');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (55, 'Merrile', 'Carter', '448-491-4477', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'mcarter1i@bizjournals.com', '250.189.121.53');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (56, 'Tiffanie', 'Petracco', '850-621-8821', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'tpetracco1j@mac.com', '213.69.6.186');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (57, 'Clem', 'Phant', '656-438-4813', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'cphant1k@altervista.org', '54.128.38.119');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (58, 'Lilly', 'Sergison', '503-587-6097', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'lsergison1l@topsy.com', '218.245.224.129');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (59, 'Alecia', 'Ife', '432-214-2795', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'aife1m@netscape.com', '165.238.238.75');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (60, 'Shaun', 'Wivell', '200-242-7236', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'swivell1n@booking.com', '125.8.1.225');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (61, 'Ase', 'Torrent', '606-438-0532', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'atorrent1o@cornell.edu', '206.219.68.178');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (62, 'Randi', 'Trahear', '716-295-4490', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'rtrahear1p@un.org', '132.232.130.78');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (63, 'Jandy', 'Mc Grath', '307-188-4418', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'jmcgrath1q@admin.ch', '242.207.57.51');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (64, 'Corene', 'Etoile', '795-601-6272', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'cetoile1r@hatena.ne.jp', '37.119.155.187');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (65, 'Selene', 'Upstell', '678-435-9216', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'supstell1s@nytimes.com', '241.36.175.231');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (66, 'Blithe', 'Philippart', '828-339-4245', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'bphilippart1t@domainmarket.com', '205.159.194.35');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (67, 'Enriqueta', 'Clarey', '304-476-6212', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'eclarey1u@cam.ac.uk', '238.218.53.45');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (68, 'Ynes', 'Aubray', '393-734-1258', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'yaubray1v@pinterest.com', '155.93.124.128');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (69, 'Sande', 'Baskett', '637-770-7641', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'sbaskett1w@columbia.edu', '91.166.133.206');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (70, 'Xena', 'Handasyde', '929-416-6303', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'xhandasyde1x@dropbox.com', '52.9.98.199');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (71, 'Idell', 'Antonoyev', '600-504-3602', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'iantonoyev1y@chicagotribune.com', '169.244.123.40');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (72, 'Danya', 'Willerton', '625-298-2393', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'dwillerton1z@taobao.com', '194.83.165.242');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (73, 'Edouard', 'Teager', '286-172-1299', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'eteager20@seesaa.net', '222.175.136.224');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (74, 'Tyrus', 'Izakoff', '375-103-3818', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'tizakoff21@domainmarket.com', '74.208.76.43');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (75, 'Ambrosius', 'McCome', '165-984-7766', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'amccome22@state.tx.us', '101.161.68.40');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (76, 'Van', 'Lewsley', '768-101-5734', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'vlewsley23@abc.net.au', '248.7.167.125');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (77, 'Karalynn', 'Jammet', '681-722-9203', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'kjammet24@stumbleupon.com', '157.35.229.191');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (78, 'Ferdinand', 'Coniam', '245-283-3183', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'fconiam25@dailymail.co.uk', '198.229.85.173');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (79, 'Marci', 'Culleford', '793-243-9426', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'mculleford26@youtu.be', '82.60.160.95');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (80, 'Cherida', 'Fullagar', '567-348-0538', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'cfullagar27@last.fm', '211.138.29.52');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (81, 'Demetria', 'Rockhill', '136-197-3732', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'drockhill28@feedburner.com', '77.71.81.86');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (82, 'Jacintha', 'Grennan', '844-858-3023', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'jgrennan29@com.com', '27.225.64.240');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (83, 'Harcourt', 'Vargas', '193-934-6875', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'hvargas2a@devhub.com', '31.226.249.164');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (84, 'Benjamen', 'Stother', '292-863-4390', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'bstother2b@tripadvisor.com', '211.166.1.124');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (85, 'Nicky', 'Senter', '930-682-0047', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'nsenter2c@is.gd', '97.214.157.109');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (86, 'Sibylle', 'Leach', '307-247-8443', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'sleach2d@yellowpages.com', '205.143.100.112');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (87, 'Gregoor', 'Cassin', '586-409-0837', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'gcassin2e@aol.com', '84.186.224.73');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (88, 'Corina', 'Elders', '687-650-7757', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'celders2f@discovery.com', '241.146.87.185');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (89, 'Tracee', 'Windrum', '121-688-6362', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'twindrum2g@whitehouse.gov', '76.184.46.142');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (90, 'Avram', 'Gott', '720-508-8601', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'agott2h@jigsy.com', '116.247.156.189');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (91, 'Taddeusz', 'Nutkin', '974-495-0177', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'tnutkin2i@ow.ly', '108.205.228.249');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (92, 'Aldon', 'Piell', '334-966-9618', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'apiell2j@livejournal.com', '106.83.33.194');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (93, 'Rafaelita', 'Vales', '260-512-5546', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'rvales2k@nationalgeographic.com', '101.176.42.166');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (94, 'Antonella', 'Rosenblath', '921-616-3178', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'arosenblath2l@google.co.uk', '61.29.27.108');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (95, 'Zsazsa', 'Rankcom', '106-754-2909', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'zrankcom2m@constantcontact.com', '214.136.241.153');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (96, 'Harley', 'Wiggington', '884-109-4703', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'hwiggington2n@exblog.jp', '238.69.173.21');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (97, 'Elka', 'Lazenbury', '203-146-9898', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'elazenbury2o@ow.ly', '79.171.76.223');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (98, 'Fionna', 'Bezants', '994-215-4934', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'fbezants2p@arizona.edu', '56.175.2.131');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (99, 'Joaquin', 'Mattedi', '919-525-9814', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'jmattedi2q@soundcloud.com', '236.176.85.173');
insert into user (id, first_name, last_name, phone, picture, email, work_email) values (100, 'Gray', 'Mayberry', '435-229-2777', 'https://blog.capterra.com/wp-content/uploads/2017/03/puppy.jpg', 'gmayberry2r@twitpic.com', '129.31.59.250');

insert into booking (id, check_in, check_out,listingId, userId) values (1, '2018-09-07 07:13:12', '2018-09-09 11:22:28', 1, 1);
insert into booking (id, check_in, check_out,listingId, userId) values (2, '2018-02-02 06:13:21', '2018-02-09 18:44:42',1, 2);
insert into booking (id, check_in, check_out,listingId, userId) values (3, '2018-02-01 19:04:21', '2018-04-03 04:17:11',1, 3);
insert into booking (id, check_in, check_out,listingId, userId) values (4, '2018-10-05 11:35:33', '2018-10-15 03:27:55',1, 4);
insert into booking (id, check_in, check_out,listingId, userId) values (5, '2018-05-20 19:26:43', '2018-06-18 23:08:37',1, 5);
insert into booking (id, check_in, check_out,listingId, userId) values (6, '2018-02-18 11:51:05', '2018-04-05 10:56:13',1, 6);
insert into booking (id, check_in, check_out,listingId, userId) values (7, '2018-02-02 00:57:44', '2018-05-31 04:07:59',1, 7);
insert into booking (id, check_in, check_out,listingId, userId) values (8, '2018-03-27 03:37:13', '2018-04-13 17:44:12',1, 8);
insert into booking (id, check_in, check_out,listingId, userId) values (9, '2018-04-09 08:05:58', '2018-05-20 12:55:57',1, 9);
insert into booking (id, check_in, check_out,listingId, userId) values (10, '2017-12-25 05:23:01', '2017-12-27 15:23:22',2, 10 );
insert into booking (id, check_in, check_out,listingId, userId) values (11, '2018-10-05 11:35:33', '2018-10-15 03:27:55',2, 4);
insert into booking (id, check_in, check_out,listingId, userId) values (12, '2018-05-20 19:26:43', '2018-06-18 23:08:37',2, 5);
insert into booking (id, check_in, check_out,listingId, userId) values (13, '2018-02-18 11:51:05', '2018-04-05 10:56:13',3, 6);
insert into booking (id, check_in, check_out,listingId, userId) values (14, '2018-02-02 00:57:44', '2018-05-31 04:07:59',3, 7);
insert into booking (id, check_in, check_out,listingId, userId) values (15, '2018-03-27 03:37:13', '2018-04-13 17:44:12',3, 8);
insert into booking (id, check_in, check_out,listingId, userId) values (16, '2018-04-09 08:05:58', '2018-05-20 12:55:57',3, 9);
insert into booking (id, check_in, check_out,listingId, userId) values (17, '2017-12-25 05:23:01', '2017-12-27 15:23:22',4, 10);
insert into booking (id, check_in, Check_out, listingId, userId) values (18, '2017-12-18 22:49:11', '2018-07-07 07:04:36', 5, 10);
insert into booking (id, check_in, Check_out, listingId, userId) values (19, '2018-01-03 05:43:56', '2018-07-16 21:39:35', 5, 23);
insert into booking (id, check_in, Check_out, listingId, userId) values (20, '2018-01-10 04:14:23', '2018-05-26 12:32:46', 5, 22);
insert into booking (id, check_in, Check_out, listingId, userId) values (21, '2018-03-03 07:40:58', '2018-07-06 17:44:26', 5, 10);
insert into booking (id, check_in, Check_out, listingId, userId) values (22, '2018-01-01 12:06:02', '2018-04-15 23:55:57', 6, 20);
insert into booking (id, check_in, Check_out, listingId, userId) values (23, '2017-11-08 20:54:07', '2018-04-26 03:04:35', 7, 10);
insert into booking (id, check_in, Check_out, listingId, userId) values (24, '2018-02-20 09:25:09', '2018-08-30 08:20:47', 8, 28);


insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (1, 5, 3, 3, 5, 2, 5, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', '2018-09-10 11:22:28',1, 1, 1);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (2, 3, 4, 1, 4, 2, 1, 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.','2018-05-09 11:22:28',1, 2, 2);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (3, 1, 2, 1, 4, 4, 1, 'Nunc purus. Phasellus in felis.','2018-04-09 11:22:28',1, 3, 3);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (4, 1, 4, 4, 5, 2, 5, 'Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', ' 2018-10-17 11:22:28', 1, 4, 4);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (5, 5, 2, 4, 2, 3, 5, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2018-04-23 11:22:28',1,5, 5);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (6, 2, 5, 1, 2, 3, 5, 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.',  '2018-10-28 11:22:28',1, 6, 6);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (7, 2, 4, 3, 5, 4, 4, 'Etiam vel augue.', '2018-10-28 11:22:28', 1, 7, 7);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (8, 1, 4, 3, 3, 5, 5, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', '2017-12-30 11:22:28', 1, 8, 8);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (9, 3, 3, 5, 3, 3, 4, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','2018-10-30 11:22:28',1, 9, 9);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (10, 5, 5, 2, 4, 4, 3, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', '2018-10-28 11:22:28',1, 10, 10);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (11, 1, 4, 3, 3, 5, 5, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', '2017-12-30 11:22:28', 2, 11, 11);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (12, 3, 3, 5, 3, 3, 4, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','2018-10-30 11:22:28',2, 12, 12);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (13, 5, 5, 2, 4, 4, 3, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', '2018-10-28 11:22:28',2, 13, 13);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (14, 3, 3, 5, 3, 3, 4, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','2018-10-30 11:22:28',3, 9, 9);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (15, 5, 5, 2, 4, 4, 3, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', '2018-10-28 11:22:28',4, 14, 14);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (16, 1, 4, 3, 3, 5, 5, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', '2017-12-30 11:22:28', 2, 11, 11);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (17, 3, 3, 5, 3, 3, 4, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','2018-10-30 11:22:28',5, 15, 15);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (18, 5, 5, 2, 4, 4, 3, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', '2018-10-28 11:22:28',6, 16, 16);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (19, 1, 4, 3, 3, 5, 5, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', '2017-12-30 11:22:28', 2, 11, 11);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (20, 3, 3, 5, 3, 3, 4, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','2018-10-30 11:22:28',7, 15, 15);
insert into reviews (id, accuracy, communication, cleanliness, locat, checkIn, val, overview, dateCreated, listingId,userId,bookingId) values (21, 5, 5, 2, 4, 4, 3, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', '2018-10-28 11:22:28',8, 16, 16);