CREATE DATABASE if not exists matchLearners;
USE matchLearners;

CREATE TABLE if not exists users (
	id_user INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
	email VARCHAR (50) NOT NULL,
    password VARCHAR (50) NOT NULL
);
CREATE TABLE if not exists admin (
	id_user INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
	email VARCHAR (50) NOT NULL,
    password VARCHAR (50) NOT NULL,
    privileges INT NOT NULL
);
CREATE TABLE if not exists post (
	id_post INT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
	description VARCHAR (50) NOT NULL,
    id_user INT NOT NULL,
    FOREIGN KEY (id_user) REFERENCES users(id_user)
);

select * from users;
INSERT INTO post VALUES (1,"Help","Need a lot of help",2);
INSERT INTO post VALUES (2,"Gardening","I want to learn some gardening skills",1);
INSERT INTO post VALUES (3,"Housekeeping","Need a lot of help",3);
INSERT INTO post VALUES (4,"Homework","Need help for maths skills",2);

INSERT INTO users VALUES (1,"Jean","jean@gmail.com","1234");
INSERT INTO users VALUES (2,"Jeanne","jeanne@gmail.com","1234");
INSERT INTO users VALUES (3,"Luc","luc@gmail.com","XXXX");