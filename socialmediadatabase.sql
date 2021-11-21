CREATE DATABASE IF NOT EXISTS nottwter;
use nottwter;

drop table if exists users;
drop table if exists posts; 
drop table if exists comments;

create table users(
id int not null auto_increment,
username varchar(25) not null,
email varchar(150) not null,
passwrd varchar(75) not null,
primary key(id)
);

create table posts(
id int not null auto_increment,
userID int not null,
content varchar(140),
date datetime not null,
primary key(id),
foreign key(userID) references users(id)
);

create table comments(
id int not null auto_increment,
postID int not null,
userID int not null,
content varchar(140),
date datetime not null,
primary key(id),
foreign key(postID) references posts(id),
foreign key(userID) references users(id)
);
