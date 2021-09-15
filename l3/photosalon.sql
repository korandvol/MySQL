
CREATE DATABASE фотосалон CHARSET UTF8;
USE фотосалон;

CREATE TABLE замовлення(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
код_замовлення VARCHAR(20) NOT NULL UNIQUE,
дата_замовлення DATE NOT NULL,
співробітник VARCHAR(50) NOT NULL UNIQUE,
покупець VARCHAR(50) NOT NULL UNIQUE,
замовлені_послуги_id INT NOT NULL

);

CREATE TABLE співробітники(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
код VARCHAR(20) NOT NULL UNIQUE,
ПІБ VARCHAR(20) NOT NULL UNIQUE,
дата DATE NOT NULL,
адреса VARCHAR(20) NOT NULL UNIQUE,
телефон VARCHAR(20) NOT NULL UNIQUE,
email VARCHAR(20) NOT NULL UNIQUE,
освіта VARCHAR(120) NOT NULL,
посада VARCHAR(50) NOT NULL,
замовлення_id INT NOT NULL
);

CREATE TABLE покупці(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
код_покупця VARCHAR(20) NOT NULL UNIQUE,
піб_покупця VARCHAR(20) NOT NULL UNIQUE,
мобільний_телефон_покупця VARCHAR(50) NOT NULL UNIQUE,
місто VARCHAR(50) NOT NULL,
адреса VARCHAR(20) NOT NULL,
замовлення_id INT NOT NULL
);


CREATE TABLE замовлені_послуги(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
код_замовлення VARCHAR(20) NOT NULL UNIQUE,
код_послуги VARCHAR(20) NOT NULL UNIQUE,
кількість VARCHAR(20) NOT NULL UNIQUE,
ціна DECIMAL(5,2) NOT NULL,
загальна_вартість DECIMAL(5,2) NOT NULL,
послуги_id INT NOT NULL
);



CREATE TABLE послуги(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
код_послуги VARCHAR(20) NOT NULL UNIQUE,
найменування_послуги VARCHAR(20) NOT NULL UNIQUE,
опис TEXT,
ціна DECIMAL (5,2)
);




CREATE TABLE замовлені_товари(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
код_замовлення VARCHAR(20) NOT NULL UNIQUE,
код_товару VARCHAR(20) NOT NULL UNIQUE,
кількість VARCHAR(20) NOT NULL UNIQUE,
ціна DECIMAL(5,2) NOT NULL,
загальна_вартість DECIMAL(5,2) NOT NULL,
замовлення_id INT NOT NULL
);




CREATE TABLE товари (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
код_товару VARCHAR(20) NOT NULL UNIQUE,
код_групи VARCHAR(20) NOT NULL UNIQUE,
артикул VARCHAR(20) NOT NULL UNIQUE,
найменування VARCHAR(20) NOT NULL UNIQUE,
опис TEXT,
ціна DECIMAL (5,2),
замовлені_товари_id INT NOT NULL
);

CREATE TABLE групи_товарів(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
код_групи VARCHAR(20) NOT NULL UNIQUE,
категорія TEXT,
товари_id INT NOT NULL
);
ALTER TABLE покупці ADD FOREIGN KEY (замовлення_id)
REFERENCES замовлення(id);
ALTER TABLE співробітники ADD FOREIGN KEY (замовлення_id)
REFERENCES замовлення(id);
ALTER TABLE замовлені_послуги ADD FOREIGN KEY (послуги_id)
REFERENCES послуги(id);
ALTER TABLE замовлення ADD FOREIGN KEY (замовлені_послуги_id)
REFERENCES замовлені_послуги(id);
ALTER TABLE замовлені_товари ADD FOREIGN KEY (замовлення_id)
REFERENCES замовлення(id);
ALTER TABLE товари ADD FOREIGN KEY (замовлені_товари_id)
REFERENCES замовлені_товари(id);
ALTER TABLE групи_товарів ADD FOREIGN KEY (товари_id)
REFERENCES товари(id);
