INSERT INTO app_user (name, email, password) VALUES
('Arijit Kumar Sahu', 'arijitkumar@gmail.com', 'ash128#$'),
('Rohan Sharma', 'rohan.sharma23@gmail.com', 'roh@!987'),
('Priya Verma', 'priyaverma99@yahoo.com', 'priya_2023@'),
('Sourav Das', 'sourav.das@gmail.com', 'sourav123##'),
('Neha Kapoor', 'neha.kapoor12@outlook.com', 'neha@456'),
('Amit Tiwari', 'amit.tiwari@rediffmail.com', 'amit@@89'),
('Sneha Chatterjee', 'sneha.chatterjee@gmail.com', 'sneha@01'),
('Rahul Bose', 'rahul.bose123@protonmail.com', 'rahul@007'),
('Divya Mehta', 'divya.mehta44@gmail.com', 'divya_mehta@!'),
('Aniket Gupta', 'aniket.gupta23@gmail.com', 'aniket_234%'),
('Simran Kaur', 'simran.kaur56@yahoo.com', 'simran#$98'),
('Vikas Yadav', 'vikas.yadav87@outlook.com', 'vikas_y@87'),
('Tanya Mishra', 'tanya.mishra99@gmail.com', 'tanya_#123'),
('Manoj Reddy', 'manoj.reddy@gmail.com', 'manoj$786'),
('Kiran Patil', 'kiran.patil@gmail.com', 'kiran@789'),
('Meenal Saxena', 'meenal.saxena@yahoo.com', 'meenal$$23'),
('Nikhil Malhotra', 'nikhil.malhotra@outlook.com', 'nikhil@@00'),
('Ananya Ghosh', 'ananya.ghosh@gmail.com', 'ananya@234'),
('Sanjay Roy', 'sanjay.roy12@protonmail.com', 'sanjay@#$'),
('Kavita Joshi', 'kavita.joshi@gmail.com', 'kavita_345'),
('Rajesh Nair', 'rajesh.nair@hotmail.com', 'rajesh123@'),
('Harshita Bansal', 'harshita.bansal@gmail.com', 'harshita#67'),
('Deepak Choudhary', 'deepak.choudhary@gmail.com', 'deepak@#$!'),
('Pooja Rathi', 'pooja.rathi22@yahoo.com', 'pooja##45'),
('Abhishek Singh', 'abhishek.singh@gmail.com', 'abhishek$$56'),
('Ritika Sharma', 'ritika.sharma88@outlook.com', 'ritika@123'),
('Varun Khanna', 'varun.khanna@gmail.com', 'varun@%%'),
('Monika Agarwal', 'monika.agarwal@gmail.com', 'monika@2024'),
('Yash Thakur', 'yash.thakur@gmail.com', 'yash_007'),
('Pankaj Bhatt', 'pankaj.bhatt@yahoo.com', 'pankaj$$!9');


INSERT INTO user_roles (user_id, roles) VALUES
(1, 'RIDER'),
(2, 'DRIVER'),
(3, 'RIDER'),
(4, 'DRIVER'),
(5, 'RIDER'),
(6, 'RIDER'),
(7, 'DRIVER'),
(8, 'RIDER'),
(9, 'DRIVER'),
(10, 'RIDER'),
(11, 'DRIVER'),
(12, 'RIDER'),
(13, 'DRIVER'),
(14, 'RIDER'),
(15, 'RIDER'),
(16, 'DRIVER'),
(17, 'RIDER'),
(18, 'DRIVER'),
(19, 'RIDER'),
(20, 'RIDER'),
(21, 'DRIVER'),
(22, 'RIDER'),
(23, 'DRIVER'),
(24, 'RIDER'),
(25, 'RIDER'),
(26, 'DRIVER'),
(27, 'RIDER'),
(28, 'DRIVER'),
(29, 'RIDER'),
(30, 'DRIVER');


INSERT INTO rider (user_id, rating) VALUES
(1, 4.8);

INSERT INTO driver (user_id, rating, available, current_location) VALUES
(1, 4.2, true, ST_GeomFromText('POINT(73.8567 18.5204)', 4326)),
(2, 3.8, true, ST_GeomFromText('POINT(73.8478 18.5316)', 4326)),
(3, 4.5, true, ST_GeomFromText('POINT(73.8282 18.5556)', 4326)),
(4, 3.2, true, ST_GeomFromText('POINT(73.8077 18.5896)', 4326)),
(5, 4.9, true, ST_GeomFromText('POINT(73.7707 18.6233)', 4326)),
(6, 3.5, true, ST_GeomFromText('POINT(73.8390 18.5036)', 4326)),
(7, 4.6, true, ST_GeomFromText('POINT(73.8352 18.4820)', 4326)),
(8, 3.9, true, ST_GeomFromText('POINT(73.9278 18.5165)', 4326)),
(9, 5.0, true, ST_GeomFromText('POINT(73.9585 18.5096)', 4326)),
(10, 3.1, true, ST_GeomFromText('POINT(73.9749 18.4642)', 4326)),
(11, 4.4, true, ST_GeomFromText('POINT(73.8422 18.6422)', 4326)),
(12, 3.7, true, ST_GeomFromText('POINT(73.8581 18.6471)', 4326)),
(13, 4.8, true, ST_GeomFromText('POINT(73.7974 18.6612)', 4326)),
(14, 3.6, true, ST_GeomFromText('POINT(73.8284 18.6888)', 4326)),
(15, 4.0, true, ST_GeomFromText('POINT(73.8671 18.7410)', 4326)),
(16, 4.7, true, ST_GeomFromText('POINT(73.7531 18.6678)', 4326)),
(17, 3.4, true, ST_GeomFromText('POINT(73.8783 18.5400)', 4326)),
(18, 4.1, true, ST_GeomFromText('POINT(73.9193 18.6000)', 4326)),
(19, 3.0, true, ST_GeomFromText('POINT(73.9003 18.7000)', 4326)),
(20, 4.3, true, ST_GeomFromText('POINT(73.9670 18.5200)', 4326)),
(21, 5.0, true, ST_GeomFromText('POINT(73.9200 18.7500)', 4326)),
(22, 3.8, true, ST_GeomFromText('POINT(73.8700 18.4300)', 4326)),
(23, 4.5, true, ST_GeomFromText('POINT(73.9900 18.5800)', 4326)),
(24, 3.2, true, ST_GeomFromText('POINT(73.8070 18.4500)', 4326)),
(25, 4.9, true, ST_GeomFromText('POINT(73.8565 18.7800)', 4326)),
(26, 3.5, true, ST_GeomFromText('POINT(73.7200 18.7300)', 4326)),
(27, 4.6, true, ST_GeomFromText('POINT(73.7800 18.6900)', 4326)),
(28, 3.9, true, ST_GeomFromText('POINT(73.6800 18.6600)', 4326)),
(29, 4.0, true, ST_GeomFromText('POINT(73.8250 18.7200)', 4326)),
(30, 4.4, true, ST_GeomFromText('POINT(73.8400 18.7000)', 4326));

INSERT INTO wallet (user_id, balance) VALUES
(1, 1000),
(2, 400);
