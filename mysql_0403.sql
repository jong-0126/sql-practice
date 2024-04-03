CREATE DATABASE opentutorials;

DROP DATABASE opentutorials;

SHOW databases;

DROP TABLE opentutorials.topic;

CREATE TABLE opentutorials.topic (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT NULL,
    created DATETIME NOT NULL,
    author VARCHAR(200) NULL
    );

INSERT INTO topic(title, description, created, author) VALUES('MySQL', 'MYSQL is', NOW(), 'egoing');
INSERT INTO topic(title, description, created, author) VALUES('MySQL1', 'MYSQL is1', NOW(), 'egoing1');
INSERT INTO topic(title, description, created, author) VALUES('MySQL2', 'MYSQL is2', NOW(), 'egoing2');
INSERT INTO topic(title, description, created, author) VALUES('MySQL3', 'MYSQL is3', NOW(), 'egoing3');


select * 
  from topic;

SELECT id, title 
  FROM topic;

SELECT id
  FROM topic
 WHERE title = 'MySQL';

SELECT * 
  FROM topic
 WHERE id <> 1; 



