INSERT INTO authors (author_name) VALUES
('J.K. Rowling'),
('Howard Phillips Lovecraft'),
('J.R.R. Tolkien');

INSERT INTO genres (genre_name) VALUES
('Fantasy'),
('Science Fiction'),
('Mystery');

INSERT INTO books (title, publication_year, author_id, genre_id) VALUES
('Harry Potter and the Philosopher\'s Stone', 1997, 1, 1),
('Howard Phillips Lovecraft. Volume 1', 2002, 2, 3),
('The Hobbit', 1937, 3, 1);

INSERT INTO users (username, email) VALUES
('john_doe', 'john@example.com'),
('jane_smith', 'jane@example.com'),
('bob_jones', 'bob@example.com');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) VALUES
(1, 1, '2024-08-01', '2024-08-15'),
(2, 2, '2024-07-21', '2024-08-05'),
(3, 3, '2024-06-25', '2024-07-10');
