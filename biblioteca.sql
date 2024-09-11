-- sqlite3 biblioteca.db

DROP TABLE authors;
CREATE TABLE authors
  (
    au_id    CHAR(3)     NOT NULL,
    au_fname VARCHAR(15) NOT NULL,
    au_lname VARCHAR(15) NOT NULL,
    CONSTRAINT pk_authors PRIMARY KEY (au_id)
  );

INSERT INTO authors (au_id, au_fname, au_lname) VALUES ('A01', 'Brian', 'Kernighan');
INSERT INTO authors (au_id, au_fname, au_lname) VALUES ('A02', 'Dennis', 'Ritchie');

DROP TABLE publishers;
CREATE TABLE publishers
  (
  pub_id   CHAR(3)     NOT NULL,
  pub_name VARCHAR(20) NOT NULL,
  city     VARCHAR(15) NOT NULL,
  CONSTRAINT pk_publishers PRIMARY KEY (pub_id)
  );

INSERT INTO publishers (pub_id, pub_name, city) VALUES ('P01', 'Prentice Hall', 'Englewood Cliffs');
INSERT INTO publishers (pub_id, pub_name, city) VALUES ('P02', 'Addison-Wesley', 'Reading');

DROP TABLE titles;
CREATE TABLE titles
  (
    title_id   CHAR(3)      NOT NULL,
    title_name VARCHAR(40)  NOT NULL,
    type       VARCHAR(10)          ,
    pub_id     CHAR(3)      NOT NULL,
    pages      INTEGER              ,
    pubdate    DATE                 ,
    CONSTRAINT pk_titles PRIMARY KEY (title_id)
  );

INSERT INTO titles (title_id, title_name, type, pub_id, pages, pubdate) VALUES ('T01', 'The C Programming Language', 'Computer', 'P01', 228, '1978-02-22');
INSERT INTO titles (title_id, title_name, type, pub_id, pages, pubdate) VALUES ('T02', 'The Unix Programming Environment', 'Computer', 'P02', 345, '1984-10-27');

DROP TABLE title_authors;
CREATE TABLE title_authors
  (
  title_id      CHAR(3)      NOT NULL,
  au_id         CHAR(3)      NOT NULL,
  au_order      SMALLINT     NOT NULL,
  CONSTRAINT pk_title_authors PRIMARY KEY (title_id, au_id)
  );

INSERT INTO title_authors (title_id, au_id, au_order) VALUES ('T01', 'A01', 1);
INSERT INTO title_authors (title_id, au_id, au_order) VALUES ('T02', 'A01', 1);

DROP TABLE au_orders;
CREATE TABLE au_orders (
  title_id CHAR(3),
  author1  CHAR(3),
  author2  CHAR(3),
  author3  CHAR(3)
  );

INSERT INTO au_orders (title_id, author1, author2, author3) VALUES ('T01', 'A01', NULL, NULL);
INSERT INTO au_orders (title_id, author1, author2, author3) VALUES ('T02', 'A01', NULL, NULL);