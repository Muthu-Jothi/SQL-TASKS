
-------------------


CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    book_name VARCHAR(100),
    author VARCHAR(100),
    price DECIMAL(10,2)
);
CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(50),
    city VARCHAR(50),
    phone VARCHAR(15)
);
CREATE TABLE Borrow (
    borrow_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    borrow_date DATE
);
ALTER TABLE Books
ADD COLUMN category VARCHAR(50);
ALTER TABLE Books
ADD COLUMN quantity INT;
ALTER TABLE Members
ADD COLUMN email VARCHAR(100);
ALTER TABLE Borrow
ADD COLUMN return_date DATE;
ALTER TABLE Books
ALTER COLUMN price TYPE DECIMAL(10,2
ALTER TABLE Books
RENAME COLUMN quantity TO stock_quantity;
SELECT *FROM BOOKS;
SELECT *FROM MEMBERS;
SELECT *FROM BORROW;
--A2--
INSERT INTO Books
(book_id, book_name, author, price, category, stock_quantity)
VALUES
(101, 'SQL Basics', 'John Smith', 450.00, 'Technology', 10),
(102, 'Python Programming', 'David Lee', 650.00, 'Technology', 15),
(103, 'Java Fundamentals', 'Robert Brown', 550.00, 'Technology', 8),
(104, 'Database Systems', 'James Wilson', 800.00, 'Education', 12),
(105, 'Web Development', 'Michael Clark', 700.00, 'Technology', 20),
(106, 'Data Science', 'Sarah Miller', 900.00, 'Technology', 5),
(107, 'English Grammar', 'Mary Jones', 300.00, 'Education', 18),
(108, 'C Programming', 'Peter Davis', 500.00, 'Technology', 7),
(109, 'Machine Learning', 'Anna Taylor', 850.00, 'Technology', 11),
(110, 'Computer Networks', 'Daniel Moore', 600.00, 'Education', 14);
INSERT INTO Members
(member_id, member_name, city, phone, email)
VALUES
(1, 'Arun Kumar', 'Chennai', '9876543210', 'arun@gmail.com'),
(2, 'Priya S', 'Madurai', '9876543211', 'priya@gmail.com'),
(3, 'Karthik R', 'Coimbatore', '9876543212', 'karthik@gmail.com'),
(4, 'Divya M', 'Salem', '9876543213', 'divya@gmail.com'),
(5, 'Rahul P', 'Trichy', '9876543214', 'rahul@gmail.com'),
(6, 'Anitha K', 'Chennai', '9876543215', 'anitha@gmail.com'),
(7, 'Vijay S', 'Erode', '9876543216', 'vijay@gmail.com'),
(8, 'Meena R', 'Madurai', '9876543217', 'meena@gmail.com');
INSERT INTO Borrow
(borrow_id, book_id, member_id, borrow_date, return_date)
VALUES
(1, 101, 1, '2026-09-01', '2026-09-10'),
(2, 102, 2, '2026-09-02', '2026-09-12'),
(3, 103, 3, '2026-09-03', '2026-09-13'),
(4, 101, 4, '2026-09-04', '2026-09-14'),
(5, 104, 5, '2026-09-05', '2026-09-15'),
(6, 105, 6, '2026-09-06', '2026-09-16'),
(7, 102, 7, '2026-09-07', '2026-09-17'),
(8, 106, 8, '2026-09-08', '2026-09-18'),
(9, 101, 2, '2026-09-09', '2026-09-19'),
(10, 109, 3, '2026-09-10', '2026-09-20');
INSERT INTO Books
(book_id, book_name, author, price, category, stock_quantity)
VALUES
(111, 'Software Engineering', 'Thomas Martin', 750.00, 'Technology', 9);
INSERT INTO Members
(member_id, member_name, city, phone, email)
VALUES
INSERT INTO Borrow
(borrow_id, book_id, member_id, borrow_date, return_date)
VALUES
(11, 111, 9, '2026-09-11', '2026-09-21');
UPDATE Books
SET price = 600.00
WHERE book_id = 103;
UPDATE Books
SET price = price * 1.10
WHERE category = 'Technology';
UPDATE Books
SET stock_quantity = stock_quantity + 5;
UPDATE Members
SET city = 'Bangalore'
WHERE member_id = 4;
UPDATE Members
SET email = 'rahulnew@gmail.com'
WHERE member_id = 5;
UPDATE Books
SET category = 'Education'
WHERE book_id = 108;
UPDATE Borrow
SET return_date = '2026-09-25'
WHERE borrow_id = 5;
DELETE FROM Books
WHERE book_id = 106
SELECT *
FROM Members
WHERE member_id NOT IN (
    SELECT member_id
    FROM Borrow
);
DELETE FROM Members
WHERE member_id = 8;
DELETE FROM Borrow
WHERE borrow_id = 10;
DELETE FROM Books
WHERE stock_quantity = 0;
SELECT *
FROM Books;
SELECT book_name, author
FROM Books;
SELECT book_name, category, price
FROM Books;
SELECT *
FROM Books
WHERE price > 500;
SELECT *
FROM Books
WHERE price < 500;
SELECT *
FROM Books
WHERE price BETWEEN 300 AND 800;
SELECT *
FROM Books
WHERE category = 'Technology';
SELECT *
FROM Books
WHERE author = 'John Smith';
SELECT *
FROM Books
WHERE book_name LIKE 'S%';
SELECT *
FROM Books
WHERE book_name LIKE '%SQL%';
SELECT *
FROM Books
WHERE category IN ('Technology', 'Education');
SELECT *
FROM Books
WHERE price <> 500;
SELECT *
FROM Books
WHERE stock_quantity > 10;
SELECT *
FROM Books
WHERE stock_quantity BETWEEN 5 AND 15;
CREATE USER library_user WITH PASSWORD 'Library@123';
GRANT SELECT
ON LibraryDB.Books
TO library_user;
GRANT INSERT
ON LibraryDB.Books
TO library_user;
GRANT UPDATE
ON LibraryDB.Books
TO library_user;
SELECT grantee, privilege_type
FROM information_schema.role_table_grants
WHERE table_name = 'books'
  AND grantee = 'library_user';
  REVOKE INSERT
ON Books
FROM library_user;
]
REVOKE UPDATE
ON Books
FROM library_user;GRANT SELECT
ON ALL TABLES IN SCHEMA public
TO library_user;
REVOKE SELECT
ON Books
FROM library_user;
SELECT grantee, table_name, privilege_type
FROM information_schema.role_table_grants
WHERE grantee = 'library_user';
SELECT *
FROM Books
ORDER BY price ASC;
SELECT *
FROM Books
ORDER BY price DESC;
SELECT *
FROM Books
ORDER BY book_name ASC;
SELECT *
FROM Books
ORDER BY book_name ASC;
SELECT *
FROM Books
ORDER BY category ASC, price ASC;
SELECT *
FROM Books
ORDER BY price DESC
LIMIT 3;
SELECT *
FROM Books
ORDER BY price ASC
LIMIT 3;
SELECT *
FROM Books
ORDER BY stock_quantity DESC
LIMIT 5;
SELECT *
FROM Members
ORDER BY member_name ASC
LIMIT 5;
SELECT *
FROM Borrow
ORDER BY borrow_date DESC
LIMIT 5;
SELECT COUNT(*) AS total_books
FROM Books;
SELECT COUNT(*) AS total_members
FROM Members;
SELECT COUNT(*) AS total_borrow_records
FROM Borrow;
SELECT SUM(stock_quantity) AS total_stock
FROM Books;
SELECT SUM(price) AS total_price
FROM Books;
SELECT AVG(price) AS average_price
FROM Books;
SELECT MAX(price) AS highest_price
FROM Books;
SELECT MIN(price) AS lowest_price
FROM Books;
SELECT MAX(price) - MIN(price) AS price_difference
FROM Books;
SELECT AVG(stock_quantity) AS average_stock
FROM Books;
SELECT category, COUNT(*) AS book_count
FROM Books
GROUP BY category;
SELECT category, AVG(price) AS average_price
FROM Books
GROUP BY category;
SELECT category, MAX(price) AS highest_price
FROM Books
GROUP BY category;
SELECT category, MIN(price) AS lowest_price
FROM Books
GROUP BY category;
SELECT category, SUM(stock_quantity) AS total_stock
FROM Books
GROUP BY category;
SELECT category, SUM(price * stock_quantity) AS total_value
FROM Books
GROUP BY category;
SELECT category, COUNT(*) AS book_count
FROM Books
GROUP BY category
HAVING COUNT(*) > 2;
SELECT category, AVG(price) AS average_price
FROM Books
GROUP BY category
HAVING AVG(price) > 500;
SELECT author, COUNT(*) AS book_count
FROM Books
GROUP BY author;
SELECT author, AVG(price) AS average_price
FROM Books
GROUP BY author;                                                                                                  
SELECT category, COUNT(*) AS book_count
FROM Books
GROUP BY category
HAVING COUNT(*) > 2;
SELECT category, AVG(price) AS average_price
FROM Books
GROUP BY category
HAVING AVG(price) > 500;
SELECT author, COUNT(*) AS book_count
FROM Books
GROUP BY author
HAVING COUNT(*) > 1;
SELECT category, SUM(stock_quantity) AS total_stock
FROM Books
GROUP BY category
HAVING SUM(stock_quantity) > 20;
SELECT author, AVG(price) AS average_price
FROM Books
GROUP BY author
HAVING AVG(price) > 600;
SELECT Books.book_name, Members.member_name
FROM Borrow

	











