DROP DATABASE  IF EXISTS social_network;

CREATE DATABASE social_network CHAR SET UTF8;
USE social_network;

CREATE TABLE users(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(120) NOT NULL UNIQUE,
created_at TIMESTAMP DEFAULT NOW(),
is_deleted BOOLEAN DEFAULT FALSE
);

INSERT INTO users (user_name, created_at) VALUES 
('Kenton_Kirlin', '2017-02-16 18:22:10.846'), 
('Andre_Purdy85', '2017-04-02 17:11:21.417'), 
('Harley_Lind18', '2017-02-21 11:12:32.574'), 
('Arely_Bogan63', '2016-08-13 01:28:43.085'), 
('Aniya_Hackett', '2016-12-07 01:04:39.298'), 
('Travon.Waters', '2017-04-30 13:26:14.496'), 
('Kasandra_Homenick', '2016-12-12 06:50:07.996'), 
('Tabitha_Schamberger11', '2016-08-20 02:19:45.512'), 
('Gus93', '2016-06-24 19:36:30.978'), 
('Presley_McClure', '2016-08-07 16:25:48.561'), 
('Justina.Gaylord27', '2017-05-04 16:32:15.577'), 
('Dereck65', '2017-01-19 01:34:14.296'), 
('Alexandro35', '2017-03-29 17:09:02.344'), 
('Jaclyn81', '2017-02-06 23:29:16.394'), 
('Billy52', '2016-10-05 14:10:20.453'), 
('Annalise.McKenzie16', '2016-08-02 21:32:45.646'), 
('Norbert_Carroll35', '2017-02-06 22:05:43.425'), 
('Odessa2', '2016-10-21 18:16:56.390'), 
('Hailee26', '2017-04-29 18:53:39.650'), 
('Delpha.Kihn', '2016-08-31 02:42:30.288'), 
('Rocio33', '2017-01-23 11:51:15.467'), 
('Kenneth64', '2016-12-27 09:48:17.380'), 
('Eveline95', '2017-01-23 23:14:18.569'), 
('Maxwell.Halvorson', '2017-04-18 02:32:43.597'), 
('Tierra.Trantow', '2016-10-03 12:49:20.774'), 
('Josianne.Friesen', '2016-06-07 12:47:00.703'), 
('Darwin29', '2017-03-18 03:10:07.047'), 
('Dario77', '2016-08-18 07:15:02.823'), 
('Jaime53', '2016-09-11 18:51:56.965'), 
('Kaley9', '2016-09-23 21:24:20.222'), 
('Aiyana_Hoeger', '2016-09-29 20:28:12.457'), 
('Irwin.Larson', '2016-08-26 19:36:22.199'), 
('Yvette.Gottlieb91', '2016-11-14 12:32:01.405'), 
('Pearl7', '2016-07-08 21:42:00.982'), 
('Lennie_Hartmann40', '2017-03-30 03:25:21.937'), 
('Ollie_Ledner37', '2016-08-04 15:42:20.322'), 
('Yazmin_Mills95', '2016-07-27 00:56:44.310'), 
('Jordyn.Jacobson2', '2016-05-14 07:56:25.835'),
('Kelsi26', '2016-06-08 17:48:08.478'), 
('Rafael.Hickle2', '2016-05-19 09:51:25.779'), 
('Mckenna17', '2016-07-17 17:25:44.855'), 
('Maya.Farrell', '2016-12-11 18:04:45.344'), 
('Janet.Armstrong', '2016-10-06 07:57:44.491'), 
('Seth46', '2016-07-07 11:40:26.557'), 
('David.Osinski47', '2017-02-05 21:23:37.392'), 
('Malinda_Streich', '2016-07-09 21:37:07.610'), 
('Harrison.Beatty50', '2016-09-02 03:48:38.340'), 
('Granville_Kutch', '2016-06-26 03:10:22.202'), 
('Morgan.Kassulke', '2016-10-30 12:42:31.387'), 
('Gerard79', '2016-08-23 19:47:44.102'), 
('Mariano_Koch3', '2017-04-17 14:14:45.662'), 
('Zack_Kemmer93', '2017-01-01 05:58:22.276'), 
('Linnea59', '2017-02-07 07:49:33.830'), 
('Duane60', '2016-12-21 04:43:37.761'), 
('Meggie_Doyle', '2017-04-04 12:17:33.931'), 
('Peter.Stehr0', '2016-08-22 18:05:42.167'), 
('Julien_Schmidt', '2017-02-02 23:12:48.451'), 
('Aurelie71', '2016-05-31 06:20:56.909'), 
('Cesar93', '2016-10-18 16:42:43.220'), 
('Sam52', '2017-03-30 22:03:45.159');


CREATE TABLE albums(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
album_name VARCHAR(120) NOT NULL,
created_at TIMESTAMP DEFAULT NOW(),
user_id INT NOT NULL,
is_deleted BOOLEAN DEFAULT FALSE
);

INSERT INTO albums (album_name, created_at, user_id) VALUES
('Я', '2016-07-07 11:40:26.557', 1), 
('Я і друзі', '2017-02-05 21:23:37.392', 2), 
('Відпочинок', '2016-07-09 21:37:07.610', 3), 
('Family', '2016-09-02 03:48:38.340', 4), 
('Work', '2016-06-26 03:10:22.202', 5), 
('Корпоратив', '2016-10-30 12:42:31.387', 6), 
('Котики і песики', '2016-08-23 19:47:44.102', 7), 
('Автомобілі', '2017-04-17 14:14:45.662', 8), 
('Фото_архів', '2017-01-01 05:58:22.276', 9), 
('Зустріч випускгиків', '2017-02-07 07:49:33.830', 10), 
('Єгипет', '2016-12-21 04:43:37.761', 11), 
('Хіп-Хоп', '2017-04-04 12:17:33.931', 12), 
('Різне', '2016-08-22 18:05:42.167', 13), 
('Тварини', '2017-02-02 23:12:48.451', 14), 
('Фото дня', '2016-05-31 06:20:56.909', 15), 
('Спортзал', '2016-10-18 16:42:43.220', 16), 
('Решта', '2017-03-30 22:03:45.159', 17);


CREATE TABLE photos(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    image_url VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    albums_id INT NOT NULL,
    is_deleted BOOLEAN DEFAULT FALSE
);

INSERT INTO photos (image_url, created_at, albums_id) VALUES
('http://elijah.biz','2016-05-31 06:20:56.909', 1),
('https://shanon.org', '2017-03-30 22:03:45.159', 2),
('http://vicky.biz', '2016-10-18 16:42:43.220', 3),
('http://oleta.net', '2016-05-31 06:20:56.909', 4),
('https://marcelino.com', '2016-08-22 18:05:42.167', 5),
('http://madison.net', '2017-04-17 14:14:45.662', 6),
('http://ison.ua', '2016-07-09 21:37:07.610', 7),
('http://censor.net', '2016-10-01 00:37:57.429', 8),
('http://bestsales.net', '2017-02-02 23:12:48.451', 9),
('http://mad.com', '2016-07-01 17:36:14.714', 10),
('http://dis.ua', '2016-11-06 02:31:23.463', 11),
('http://adison.net', '2017-01-01 17:44:42.980', 12)
;



CREATE TABLE comments(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
comment_text VARCHAR(255) NOT NULL,
user_id INT NOT NULL,
albums_id INT NOT NULL,
photos_id INT NOT NULL,
created_at TIMESTAMP DEFAULT NOW(),
is_deleted BOOLEAN DEFAULT FALSE
);


INSERT INTO comments(comment_text, user_id, albums_id, photos_id, created_at) VALUES
('Було весело....', 1, 1, 1, '2016-05-31 06:20:56.909'),
('Гарні фото', 2, 2, 2, '2017-03-30 22:03:45.159'),
('Гарно', 3, 3, 3, '2016-10-18 16:42:43.220'),
('Хороша машина', 4, 4, 4, '2016-05-31 06:20:56.909'),
('????', 5, 5, 5, '2016-08-22 18:05:42.167'),
('no comments', 6, 6, 6, '2017-04-17 14:14:45.662'),
('cool', 7, 7, 7, '2016-07-09 21:37:07.610'),
('м-да', 8, 8, 8, '2016-10-01 00:37:57.429'),
('було цікаво', 9, 9, 9,'2017-02-02 23:12:48.451'),
('lovely', 10, 10, 10,  '2016-07-01 17:36:14.714'),
('nice', 11, 11, 11, '2016-11-06 02:31:23.463'),
('!!!', 12, 12, 12, '2017-01-01 17:44:42.980');



CREATE TABLE likes(
	user_id INT NOT NULL,
    photos_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(user_id, photos_id)
);

INSERT INTO likes(user_id, photos_id, created_at) VALUES 
(1,  3, '2017-01-07 10:05:41.165'), 
(2,  2, '2015-01-07 11:05:41.165'),
(3,  8, '2013-05-07 8:05:54.165'),
(4,  7, '2012-05-07 7:05:54.165'),
(5,  6, '2011-05-07 1:05:54.165'),
(6,  5, '2010-09-07 12:05:54.165'),
(7,  3, '2014-08-07 11:05:54.165'),
(8,  3, '2014-07-07 11:05:54.165'),
(9,  3, '2014-08-07 11:05:54.165'),
(10,  3, '2014-06-07 11:05:54.165'),
(11,  3, '2014-05-07 7:12:54.165'),
(12,  3, '2014-04-07 1:05:54.165'),
(13,  3, '2014-05-07 11:05:54.165');




CREATE TABLE tags(
tag_name VARCHAR(255) NOT NULL,
created_at TIMESTAMP DEFAULT NOW(),
user_id INT NOT NULL,
albums_id INT NOT NULL,
photos_id INT NOT NULL,
PRIMARY KEY (user_id, albums_id, photos_id)
);


INSERT INTO tags(tag_name, created_at, user_id, albums_id, photos_id) VALUES
('sunset', DEFAULT, 1, 1, 1), 
('photography', DEFAULT, 2, 2, 2), 
('sunrise', DEFAULT, 3, 3, 3), 
('landscape', DEFAULT, 4, 4, 4), 
('food', DEFAULT, 5, 5, 5), 
('foodie', DEFAULT, 6, 6, 6), 
('delicious', DEFAULT, 7, 7, 7),
('beauty', DEFAULT, 8, 8, 8), 
('stunning', DEFAULT, 9, 9, 9), 
('dreamy', DEFAULT, 10, 10, 10), 
('lol', DEFAULT, 11, 11, 11),
('happy', DEFAULT, 12, 12, 12);





CREATE TABLE messages (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
text_fill VARCHAR(255) NOT NULL,
user_id INT NOT NULL,
created_at TIMESTAMP DEFAULT NOW(),
friends_id INT NOT NULL,
is_deleted BOOLEAN DEFAULT FALSE
);

INSERT INTO messages(text_fill, user_id, created_at, friends_id) VALUES
('Good morning', 1, '2014-05-07 11:05:54.165',1),
('Hello buddy!', 2, '2014-05-07 11:05:54.165',2), 
('Greetings', 3, '2014-05-07 11:05:54.165',3), 
('How are you doing', 4, '2014-05-07 11:05:54.165',4), 
('Lets party', 5, '2005-05-07 11:05:54.165',5), 
('Well go to the concert', 6,'2004-05-07 11:05:54.165',6), 
('You were drunk yesterday', 7, '2007-03-07 11:05:54.165',7), 
('Where the beach at?', 8, '2006-05-07 11:05:54.165',8), 
('Smile', 9, '2009-05-07 11:05:54.165',9),
('Could you smile?', 10, '2010-05-07 1:05:54.165',10),
('Bye', 11, '2012-05-07 11:05:54.165',11);



CREATE TABLE friends(
user_id INT NOT NULL,
messages_id INT NOT NULL,
PRIMARY KEY (user_id, messages_id)
);

INSERT INTO friends(user_id, messages_id) VALUES
(1, 1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11);

ALTER TABLE albums ADD FOREIGN KEY (user_id)
REFERENCES userS(id);
ALTER TABLE photos ADD FOREIGN KEY (albums_id)
REFERENCES albums(id);
ALTER TABLE comments ADD FOREIGN KEY (user_id)
REFERENCES users(id);
ALTER TABLE comments ADD FOREIGN KEY (albums_id)
REFERENCES albums(id);
ALTER TABLE comments ADD FOREIGN KEY (photos_id)
REFERENCES photos(id);
ALTER TABLE likes ADD FOREIGN KEY (user_id)
REFERENCES users(id);
ALTER TABLE likes ADD FOREIGN KEY (photos_id) REFERENCES photos(id);


ALTER TABLE tags ADD FOREIGN KEY (user_id)
REFERENCES users(id);
ALTER TABLE tags ADD FOREIGN KEY (albums_id)
REFERENCES albums(id);
ALTER TABLE tags ADD FOREIGN KEY (photos_id)
REFERENCES photos(id);
ALTER TABLE friends ADD FOREIGN KEY (user_id)
REFERENCES users(id);
ALTER TABLE friends ADD FOREIGN KEY (messages_id)
REFERENCES messages(id);















CREATE INDEX idx_user_name ON users(user_name);
CREATE INDEX idx_user_id ON friends(user_id);
CREATE INDEX idx_image_url ON photos (image_url);

SELECT * FROM users;



SELECT * FROM albums;
UPDATE albums SET album_name = 'Відпочинок закордном' WHERE id = 3; 
SELECT * FROM albums; 
UPDATE albums SET album_name = 'Робота' WHERE id = 5;
SELECT * FROM albums;
SELECT count(comment_text) FROM comments;
SELECT AVG (photos_id) FROM likes;
SELECT min(messages_id) FROM friends;
SELECT max(user_id) FROM friends;
SELECT text_fill FROM messages WHERE created_at = (SELECT min(created_at) FROM messages);
SELECT * FROM messages;
SELECT * FROM users ORDER BY created_at LIMIT 5,5;
SELECT * FROM users WHERE created_at LIKE '%56%';
SELECT * FROM users WHERE created_at LIKE '2_86_3';
SELECT * FROM users WHERE id NOT BETWEEN 2 AND 5;

SELECT * FROM users;
SELECT * FROM albums;

SELECT * FROM albums a 
INNER JOIN users u ON a.user_id=u.id;

SELECT * FROM comments c
LEFT JOIN albums a ON c.user_id=c.id;

UPDATE users SET is_deleted=true WHERE id IN (3,5,7,11,14,18,22,33);

SELECT * FROM users WHERE is_deleted = false;
SELECT * FROM users WHERE is_deleted = true;
SELECT count(*) FROM users WHERE is_deleted = false;
SELECT count(*) FROM users WHERE is_deleted = true;
SELECT * FROM users WHERE is_deleted = false ORDER BY created_at;
SELECT * FROM users WHERE is_deleted = true ORDER BY created_at Desc;
SELECT * FROM users WHERE is_deleted = false AND user_name = 'Janet.Armstrong';
SELECT max(created_at) FROM users WHERE is_deleted = false;
SELECT * FROM users WHERE is_deleted = true
AND created_at = (SELECT min(created_at) FROM users WHERE is_deleted = true);
SELECT * FROM users WHERE is_deleted = true
AND created_at = (SELECT max(created_at) FROM users WHERE is_deleted = true);
SELECT * FROM users WHERE is_deleted = false AND created_at > '2016-08-02 21:32:45.646';
SELECT * FROM users WHERE is_deleted = true AND created_at BETWEEN '2016-08-02 21:32:45.646' AND '2017-02-16 18:22:10.846';
SELECT * FROM users WHERE user_name LIKE '%ey%';
SELECT * FROM users WHERE user_name LIKE 'd%';
SELECT * FROM users WHERE user_name LIKE 'h_r%';
SELECT * FROM albums;
UPDATE albums SET is_deleted = true WHERE id IN  (5, 7, 11, 15, 17);
SELECT * FROM albums WHERE is_deleted = true;
SELECT * FROM albums WHERE is_deleted = false;
SELECT * FROM albums WHERE is_deleted = true AND album_name = 'Єгипет';
SELECT count(*) FROM albums WHERE is_deleted = false;
SELECT count(*) FROM albums WHERE is_deleted = true;
SELECT * FROM  albums a
JOIN users u ON a.user_id=u.id
AND a.is_deleted = false
AND u.is_deleted = false;
SELECT * FROM  albums a
JOIN users u ON a.user_id=u.id
AND a.is_deleted = true
AND u.is_deleted = true;
SELECT * FROM albums a
JOIN users u ON a.user_id=u.id
AND a.is_deleted = true
AND u.is_deleted = true 
AND u.id = 5;

UPDATE photos SET is_deleted = true WHERE id IN  (5, 7, 11);
SELECT * FROM photos;
SELECT * FROM photos WHERE is_deleted = true;
SELECT * FROM photos p
JOIN albums a ON p.albums_id=a.id;
SELECT * FROM photos p
JOIN albums a ON p.albums_id=a.id
AND p.is_deleted = true
AND a.is_deleted = true;
SELECT * FROM photos p
JOIN albums a ON p.albums_id=a.id
AND p.is_deleted = true
AND a.is_deleted = true ORDER BY p.image_url  ASC;
SELECT * FROM comments;
UPDATE comments SET is_deleted = true WHERE id IN (1,4,6,8,10);
SELECT count(*) FROM comments WHERE is_deleted = false;
SELECT * FROM comments c
JOIN photos p ON c.photos_id=p.id;
SELECT * FROM comments c
JOIN photos p ON c.photos_id=p.id
AND c.is_deleted = false
AND p.is_deleted = false ORDER BY C.created_at DESC;
SELECT count(*) FROM comments WHERE is_deleted = true;
SELECT * FROM comments c
JOIN photos p ON c.photos_id=p.id
AND c.is_deleted = false
AND p.is_deleted = false
JOIN users u ON u.id=c.user_id
AND u.is_deleted = false;

SELECT
u.user_name AS comment_user,
p.image_url,
c.comment_text 
FROM comments c
JOIN photos p ON c.photos_id=p.id
AND c.is_deleted = false
AND p.is_deleted = false
JOIN users u ON u.id=c.user_id
AND u.is_deleted = false;

SELECT
u.user_name AS comment_user,
p.image_url,
c.comment_text,
uu.user_name AS photo_creator 
FROM comments c
JOIN photos p ON c.photos_id=p.id
AND c.is_deleted = false
AND p.is_deleted = false
JOIN users u ON u.id=c.user_id
AND u.is_deleted = false
JOIN users uu ON c.user_id=uu.id
AND uu.is_deleted = false;

SELECT
u.user_name AS comment_user,
p.image_url,
c.comment_text,
uu.user_name AS photo_creator 
FROM comments c
JOIN photos p ON c.photos_id=p.id
AND c.is_deleted = false
AND p.is_deleted = false
JOIN users u ON u.id=c.user_id
AND u.is_deleted = false
JOIN users uu ON c.user_id=uu.id
AND uu.is_deleted = false
AND c.id = 2;

SELECT * FROM users WHERE is_deleted = false AND user_name LIKE 'Andre_Purdy85';

SELECT t.tag_name, t.user_id, t.created_at FROM tags t
JOIN photos p ON p.id=t.photos_id
AND p.is_deleted = false;

SELECT * FROM friends f
JOIN users u ON f.user_id=u.id
AND u.is_deleted = false;

SELECT * FROM friends f
JOIN users u ON f.user_id=u.id
AND u.is_deleted = false
AND u.created_at>'2017-01-01';

SELECT f.user_id, u.user_name, u.created_at  FROM friends f
JOIN users u ON f.user_id=u.id
AND u.is_deleted = false
AND u.created_at>'2017-01-01';