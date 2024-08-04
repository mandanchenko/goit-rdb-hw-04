create schema LibraryManagement;
use Libraborrowed_booksryManagement;

create table if not exists authors
(
author_id INT auto_increment primary key,
author_name VARCHAR(255)
);

create table if not exists genres
(
genre_id INT auto_increment primary key,
genre_name VARCHAR(255)
);

create table if not exists books
(
book_id INT auto_increment primary key,
title VARCHAR(255),
publication_year year,
author_id int,
genre_id int,

foreign key (author_id) references authors(author_id),
foreign key (genre_id) references genres(genre_id)

);
/*
e) Таблиця "users":
user_id (INT, автоматично зростаючий PRIMARY KEY)
username (VARCHAR)
email (VARCHAR)
*/
create table if not exists users
(
user_id INT auto_increment primary key,
username VARCHAR(255),
email VARCHAR(255)
);
/*
f) Таблиця "borrowed_books":
borrow_id (INT, автоматично зростаючий PRIMARY KEY)
book_id (INT, FOREIGN KEY зв'язок з "Books")
user_id (INT, FOREIGN KEY зв'язок з "Users")
borrow_date (DATE)
return_date (DATE)
*/
create table if not exists borrowed_books
(
borrow_id INT auto_increment primary key,
book_id int,
user_id int,
borrow_date date,
return_date date,

foreign key (book_id) references books(book_id),
foreign key (user_id) references users(user_id)
);
