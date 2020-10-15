CREATE DATABASE day2
SHOW DATABASES;

USE day2;
CREATE TABLE nilai (
kolom1 TINYINT, 
kolom2 SMALLINT, 
kolom3 MEDIUMINT, 
kolom4 INT, 
kolom5 BIGINT);
SHOW TABLES;
SHOW COLUMNS FROM nilai;

INSERT INTO nilai VALUE ((10.34),(400.499),(12345.50),(143.655),(999.9999));
SELECT*FROM nilai;

CREATE TABLE nilai2(a SMALLINT, b SMALLINT UNSIGNED )
SHOW COLUMNS FROM nilai2;

CREATE TABLE 	nilai3(a INT(2), b TINYINT (1));
SHOW COLUMNS FROM nilai3;

CREATE TABLE nilai4(a INT (7) ZEROFILL);
SHOW COLUMNS FROM nilai4;
INSERT INTO nilai4 VALUE (46123);
SELECT*FROM nilai4;
INSERT INTO nilai4 VALUE (46);
SELECT*FROM nilai4;
INSERT INTO nilai4 VALUE (4612388);
SELECT*FROM nilai4;
INSERT INTO nilai4 VALUE (461238891);
SELECT*FROM nilai4;
INSERT INTO nilai4 VALUE (123456789123);
SELECT*FROM nilai4;

CREATE TABLE nilai5(
a INT1, 
b INT2, 
c INT3,
d INT4,
e INT8,
f INTEGER);
SHOW COLUMNS FROM nilai5;
DROP TABLE NILAI5;


CREATE TABLE contoh_dec_1(
a DECIMAL,
b DECIMAL (5,2),
c DECIMAL (6,3),
d DECIMAL (9,4)
);
SHOW COLUMNS FROM contoh_dec_1;

INSERT INTO contoh_dec_1 VALUES
(10,10,10,10),
(13.4,13.4,13.4,13.4);

SELECT*FROM contoh_dec_1;

CREATE TABLE contoh_dec_2(
a DECIMAL (5,2) UNSIGNED,
b DECIMAL (5,2)ZEROFILL
);
SHOW COLUMNS FROM contoh_dec_2;


INSERT INTO contoh_dec_2 VALUES
(50,60),
(13.453,13.453);

SELECT*FROM contoh_dec_2;

CREATE TABLE contoh_float_1(
a FLOAT(3,2),
b FLOAT (5,3)
);
SHOW COLUMNS FROM contoh_float_1;
INSERT INTO contoh_float_1 VALUES
(5.6,6.7),
(1.4,1.4);
SELECT*FROM contoh_float_1;

CREATE TABLE negara_asean(
nama_negara VARCHAR (50),
ibu_kota VARCHAR (50),
luas_wil INT,
jumlah_penduduk BIGINT
);

SHOW COLUMNS FROM negara_asean;
INSERT INTO negara_asean VALUES
("Indonesia","Jakarta",1904569,267026366),
("Malaysia", "Kuala Lumpur",329847,32652083),
("Thailand","Bangkok",513120,68977400),
("Filipina","Manila",300000,109180815),
("Singapura","Singapura",697,6209660),
("Brunei Darussalam","Bandar Seri Begawan",5765,464478),
("Vietnam","Hanoi",331210,98721275),
("Laos","Vientiane",236800,7447396),
("Myanmar/Burma","Rangoon(Yangon)",676578,55590071),
("Kamboja","Phnom Penh",181035,16926984);
SELECT*FROM negara_asean;



'ini string'
"ini string"

SELECT 'sedang belajar string';
SELECT"Saya laper";

SELECT'saya makan ayam goreng pada hari senin';
SELECT"saya makan ayam goreng pada hari senin";
SELECT"saya makan ayam goreng pada hari jum'at";

CREATE TABLE contoh_string_1(
a CHAR(5),
b VARCHAR (5)
);
SHOW COLUMNS FROM contoh_string_1;
INSERT INTO contoh_string_1 VALUES
("makan","enak"),
("makanan","makanan");
SELECT*FROM contoh_string_1;

CREATE TABLE contoh_string_2(
a CHAR(5),
b CHAR (5)
);
SELECT*FROM contoh_string_2;
INSERT INTO contoh_string_2 VALUE
("abc","a  ");
SELECT CHAR_LENGTH(a),CHAR_LENGTH(b) FROM contoh_string_2;
INSERT INTO contoh_string_2 VALUE ("abc","  a  ");
INSERT INTO contoh_string_2 VALUE ("abc abc","  abc  ");

CREATE TABLE contoh_string_3(
a BINARY (5),
B VARBINARY (5),
C CHAR (5),
D VARCHAR (5)
);

INSERT INTO contoh_string_3 VALUES
("sen","sel", "rab","kam"),
("sen","SEL", "RAB","KAM");
SELECT*FROM contoh_string_3;
SELECT*FROM contoh_string_3 WHERE a LIKE "%sen%";
SELECT*FROM contoh_string_3 WHERE b="sel";
SELECT*FROM contoh_string_3 WHERE c="Rab";
SELECT*FROM contoh_string_3 WHERE d='KaM';


CREATE TABLE latihan_string(
a VARBINARY (50),
B VARCHAR (50),
C CHAR (50),
D BINARY (50)
);

SHOW COLUMNS FROM latihan_string;
INSERT INTO latihan_string VALUES
("Bandar Lampung","Metro", "Ap#688-7025 Non, Rd","LA"),
("Katowice","Katowice", "AP#857-566 Nibh.Avenue","Slaskie"),
("Gojal Upper Hunza","Diamer", "2653 Orci. St","Gilgit Baltistan"),
("Allingsas","Uddevalla", "AP#424-7612 Mauris Rd.","Vastra Gotalands lan"),
("Itagui","Apartado", "AP#638-8111 Elementum Road","ANT"),
("Rionegro","Itagui", "P.O. Box 865,6270 Lorem Ave","Antioquia"),
("Vilatta","Valmacca", "Ap#769-537 Penatibus St.","Piemonte"),
("Orizaba","Minatitlan", "P.O Box 173, 3247 Pellentesque St.", "Veracruz");

SELECT*FROM latihan_string;
SELECT*FROM latihan_string WHERE d ='Veracruz';
SELECT*FROM latihan_string WHERE a="Vilatta";
SELECT*FROM latihan_string WHERE c LIKE "%173%";


CREATE TABLE contoh_text_1(
a TINYTEXT,
b TEXT,
c LONGTEXT
);

INSERT INTO contoh_text_1 VALUE ("senin","selasa","jum'at")
SELECT*FROM contoh_text_1;
INSERT INTO contoh_text_1 VALUE ("it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout",
"it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text",
"it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)");
SELECT*FROM contoh_text_1;

CREATE TABLE contoh_blob_1(
a TINYBLOB,
b BLOB,
c LONGBLOB
);

INSERT INTO contoh_blob_1 VALUE (
"0000000111111111111100000000000000000000000000000000000000000000000000001111111111111111",
"0000000000000011111111111111111110000010100000000001111111111111111110000000000000000000",
"00000000000000000000000011111111111111111100000000000000000000000000000111111111111111111"
);
SELECT*FROM contoh_blob_1;


CREATE TABLE contoh_date_1(
a DATE,
b DATETIME,
c TIMESTAMP,
d TIME,
e YEAR(2),
f YEAR (4),
g YEAR
);
SHOW COLUMNS FROM contoh_date_1;
SELECT*FROM contoh_date_1;
INSERT INTO contoh_date_1 VALUES (
'2020-10-10','2020-10-09 11:49:00','2020-10-09 11:49:00','11:50:00','98','2019','2021'
);

SELECT NOW() //waktu dan tanggal skrg di PC

CREATE TABLE contoh_enum_1(
a ENUM ('laki-laki','perempuan')); 

SHOW COLUMNS FROM contoh_enum_1;

INSERT INTO contoh_enum_1 VALUE ('laki');
SELECT*FROM contoh_enum_1;
INSERT INTO contoh_enum_1 VALUE ('perempuan');
