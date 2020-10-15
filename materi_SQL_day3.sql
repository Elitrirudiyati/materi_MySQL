CREATE DATABASE day3;
USE day3;
CREATE TABLE contoh_set(
hobi SET ('Memancing','Menulis','Menggambar','Belanja')
);
SHOW TABLES;

SELECT*FROM contoh_set;
INSERT INTO contoh_set VALUE ('Memancing,tidur');

NULL ('tidak ada data')

CREATE TABLE contoh_null(
nope VARCHAR (15) NULL,
email VARCHAR (100) NULL
);

INSERT INTO contoh_null VALUE (NULL,'email@mail.com')
SELECT *FROM contoh_null;

CREATE TABLE contoh_not_null(
nope VARCHAR(15)NOT NULL,
email VARCHAR (100) NOT NULL
);
INSERT INTO contoh_not_null VALUE ('0808888','email@mail.com')
SELECT *FROM contoh_not_null;

CREATE TABLE contoh_default(
id INT NOT NULL,
nilai INT DEFAULT (0)
);

SELECT*FROM contoh_default
INSERT INTO contoh_default (id) VALUE (2)
INSERT INTO contoh_default (id) VALUE (1)

CREATE TABLE on_update(
id INT,
ubah TIMESTAMP NOT NULL
);

INSERT INTO on_update (id) VALUE (2)
SELECT*FROM on_update;

UPDATE on_update SET id=3 WHERE id=1


CREATE TABLE auto_inc(
id INT PRIMARY KEY AUTO_INCREMENT,
nama VARCHAR (100) NOT NULL
);

INSERT INTO auto_inc (nama) VALUES ("Maulana")
SELECT*FROM auto_inc
INSERT INTO auto_inc (nama) VALUES ("Eli"),("Yanto")

CREATE TABLE contoh_unik(
id INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR (100) UNIQUE,
nama VARCHAR (100)
);

INSERT INTO contoh_unik(email,nama) VALUE ("b@gmail.com","si A")
SELECT*FROM contoh_unik