
CREATE DATABASE library CHARSET UTF8;
USE library;

CREATE TABLE BOOK(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
book_name VARCHAR(120) NOT NULL,
description TEXT,
publication_date DATE  NOT NULL DEFAULT '2018-01-01',
category VARCHAR(30) NOT NULL,
isbn VARCHAR(20) NOT NULL UNIQUE,
price DECIMAL (5,2) NOT NULL DEFAULT '0.00',
pages INT NOT NULL,
author_name VARCHAR(45) NOT NULL,
author_surname VARCHAR(45) NOT NULL,
author_email VARCHAR(50) NOT NULL UNIQUE,
author_age INT NOT NULL,
birthday DATE  NOT NULL,
author_awards VARCHAR(120)
);


INSERT INTO BOOK(book_name, description, publication_date, category, isbn, price, pages, author_name, author_surname, author_email, author_age, birthday, author_awards)
VALUES
( 'Виправний день', Description, DEFAULT, 'Трилер', '45-654-45', 150, 150, 'Чак', 'Поланік', 'polanik@gmail.com', 56, '1962-12-10', 'Guardian First Book Award' ),
        ( 'Де немає Бога', Description, DEFAULT, 'Проза', '256-865-89', DEFAULT, 89, 'Макс', 'Кідрук', 'kindruk@gmail.com', 48, '1970-10-12', NULL ),
        ( 'Початок', Description, DEFAULT, 'Проза', '468-4878-55', 300.00, 72, 'Люко', 'Дашвар', 'dashvar@gmail.com', 63, '1954-01-17', 'Costa Book Awards' ),
        ( 'Убивства за абеткою', Description, DEFAULT, 'Детектив', '2589-5479-55', DEFAULT, 140, 'Агата', 'Крісті', 'kristi@gmail.com', 83, '1935-11-07', 'National Book Awards' ),
        ( 'Багряні ріки', Description, DEFAULT, 'Детектив', '4815-4878-59', 44.45, 256, 'Жан Крістоф', 'Гранже', 'grange@gmail.com', 42, '1976-02-15', NULL ),
        ( 'Шерлок.1 сезон', Description, DEFAULT, 'Детектив', '785-45-454', 35.00,352, 'Артур', 'Конан Дойль', 'doyl@gmail.com', 96, '1922-12-14', 'Pulitzer Prize' ),
        ( 'Час - найпростіша річ', Description, DEFAULT, 'Фантастика', '587-545-454', 456.99, 136, 'Кліффорд', 'Сімак', 'simak@gmail.com', 39, '1979-06-03', NULL ),
        ( 'Мегалодон', Description, DEFAULT, 'Фантастика', '45-598-98', 231.21,  148, 'Стів', 'Альтен', 'alten@gmail.com', 40, '1978-08-03', NULL ),
        ( 'Брама. Багряні ночі', Description, DEFAULT, 'Фантастика', '6-44548-45', 33.33, 221, 'Мирослав', 'Кошик', 'koshyk@gmail.com', 36, '1983-07-04', NULL ),
        ( 'Турецький гамбіт', Description, DEFAULT, 'Пригоди', '658-49956-5', 66.66, 254, 'Борис', 'Акунін', 'akunin@gmail.com', 63, '1954-06-03', NULL ),
		( 'Чорний красень', Description, DEFAULT, 'Пригоди', '24-48-5454', 44.55, 158, 'Анна', 'Сюел', 'suel@gmail.com', 39, '1979-06-03', NULL ),
		( 'Крига Ч', Description, DEFAULT, 'Фантастика', '248-5956-2', 12.12,  99, 'Яцек', 'Дукай', 'ducay@gmail.com', 42, '1976-06-03', NULL ),
        ( 'Робінзон Крузо', Description, DEFAULT, 'Пригоди', '4-5655-45848', 33.33, 123, 'Дануель', 'Дефо', 'defo@gmail.com', 98, '1920-08-20', NULL ),
		( 'Серця трьох', Description, DEFAULT, 'Пригоди', '48-485-4555', 40.00, 456, 'Джек', 'Лондон', 'london@gmail.com', 96, '1922-12-14', 'Pulitzer Prize'),
		( 'Чорна кров', Description, DEFAULT, 'Пригоди', '485-4851255', DEFAULT, 133, 'Луї', 'Гію', 'giu@gmail.com', 88, '1930-09-26', 'Pulitzer Prize'),
		( 'Маніяк на замовлення', Description, DEFAULT, 'Детектив', '42586-5596-5', DEFAULT, 352, 'Андрій', 'Кокотюха', 'kokotuxa@gmail.com', 45, '1973-08-02', NULL ),
        ( 'Улісс', Description, DEFAULT, 'Пригоди', '24785-585-59', 87.99, 265, 'Джеймс', 'Джойс', 'joys@gmail.com', 53, '1964-08-02', NULL ),
        ( 'Персеполіс', Description, DEFAULT, 'Комікси', '56895-59-554', 999.99, 123, 'Маржан', 'Сатрапи', 'satrapi@gmail.com', 45, '1973-08-02', NULL ),
		( 'Бетмен', Description, DEFAULT, 'Комікси', '5489-8524-55', DEFAULT, 240, 'Френк', 'Міллер', 'miller@gmail.com', 78, '1940-10-01', 'Guardian First Book Award' ),
        ( 'Укрмен', Description, DEFAULT, 'Комікси', '15-548-56', 99.99, 200, 'Юрій', 'Бонсевич', 'bonsevuch@gmail.com', 45, '1973-02-28', NULL ),
		( 'Вартові', Description, DEFAULT, 'Комікси', '7851-566-45', 100.33, 114, 'Алан', 'Мур', 'moor@gmail.com', 63, '1954-01-19', NULL ),
		( 'Кобзар', Description, DEFAULT, 'Поезія', '548-5995-545', 55.55,  450, 'Тарас', 'Шевченко', 'shevchenko@gmail.com', 204, '1814-03-09', NULL),
		( 'Бийся за неї', Description, DEFAULT, 'Поезія', '4-454-5445', DEFAULT, 98, 'Сергій', 'Жадан', 'gadan@gmail.com', 43, '1975-12-14', NULL ),
		( 'На лезі клинка', Description, DEFAULT, 'Фентезі', '854-4545-545', 64.33, 187, 'Джо', 'Аберкромбі', 'abercrombi@gmail.com', 53, '1964-04-24', NULL),
		( 'Сицилієць', Description, DEFAULT, 'Жахи', '414-554-5', DEFAULT, 126, 'Маріо', 'Пюзо', 'piuzo@gmail.com', 63, '1954-06-03', NULL );
        
SELECT * FROM BOOK;
UPDATE BOOK SET book_name = 'Вій' WHERE id = 3;
UPDATE BOOK SET author_surname = 'Гоголь' WHERE id = 3;
UPDATE BOOK SET author_surname = 'ГОГОЛЬ' WHERE id = 7;
SELECT count(author_awards) FROM book;
SELECT min(pages) FROM book;
SELECT max(pages) FROM book;
SELECT AVG(price) FROM book;
SELECT SUM(category = 'Детектив') FROM book;
SELECT min(price) FROM book WHERE price > 0;
SELECT book_name FROM book WHERE price = (SELECT min(price) FROM book);
SELECT book_name FROM book WHERE price = (SELECT min(price) AND price IS NOT NULL FROM book);
SELECT book_name, round(price,4) AS price FROM book;
SELECT * FROM book ORDER BY publication_date LIMIT 5,5;
SELECT * FROM book ORDER BY publication_date LIMIT 10,6;
SELECT * FROM book WHERE price LIKE '%00';
SELECT * FROM book WHERE author_surname LIKE 'Гоголь';
SELECT * FROM book WHERE isbn LIKE '%56%';
SELECT * FROM book WHERE isbn LIKE '2_86_3';
SELECT * FROM book WHERE price BETWEEN 50 AND 120;
SELECT * FROM book WHERE price NOT BETWEEN 200 AND 600;
DELETE FROM book WHERE id = 3;
DELETE FROM book WHERE isbn = '256-865-89';
DELETE FROM book WHERE author_email = 'london@gmail.com';


