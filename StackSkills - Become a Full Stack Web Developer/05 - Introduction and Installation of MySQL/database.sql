
CREATE DATABASE course;

USE course;

CREATE DATABASE course;

USE course;

-- ------------------------------------------

CREATE TABLE names (
    first TEXT,
    last TEXT
);

-- ------------------------------------------

INSERT INTO names (first, last)
VALUES('John', 'Doe');

-- ------------------------------------------

SELECT first FROM names WHERE last = 'doe' ORDER BY first;

-- ------------------------------------------

CREATE TABLE nomes (
    ID MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first VARCHAR(20),
    last VARCHAR(20)
);

-- ------------------------------------------

INSERT INTO nomes (first, last)
VALUES ('Jane', 'Doe'),('John', 'Doe');

-- ------------------------------------------

SELECT * FROM nomes;

SELECT first FROM nomes WHERE last = 'doe';

