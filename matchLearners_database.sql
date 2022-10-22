CREATE DATABASE if not exists matchLearners;
USE matchLearners;

DROP TABLE if exists users;

CREATE TABLE users (
	idUser int primary key,
    userDateCreation Date,
    lastname varchar(30) not null,
    firstname varchar(30) not null,
    age int not null,
    email varchar(100) not null,
    mobileNumber varchar(15),
    cityName varchar(100) not null,
    biography varchar(1000),
    photograph varchar(1000)
    /*listPostsPublished int,
    listPostsLiked int
    FOREIGN KEY idListPostsPublished REFERENCES listPosts(idListPostsPublished),
    FOREIGN KEY idListDemands REFERENCES listPostsLiked(idListPostsLiked)*/
);