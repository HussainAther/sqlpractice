-- Library management system in SQL

-- Table: books
CREATE TABLE books (
  book_id INT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  author VARCHAR(100) NOT NULL,
  publication_date DATE,
  available BOOLEAN DEFAULT true
);

-- Table: members
CREATE TABLE members (
  member_id INT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100),
  join_date DATE
);

-- Table: loans
CREATE TABLE loans (
  loan_id INT PRIMARY KEY,
  book_id INT,
  member_id INT,
  loan_date DATE,
  return_date DATE,
  FOREIGN KEY (book_id) REFERENCES books(book_id),
  FOREIGN KEY (member_id) REFERENCES members(member_id)
);

-- Inserting sample data into books table
INSERT INTO books (book_id, title, author, publication_date, available)
VALUES
  (1, 'Book1', 'Author1', '2021-01-01', true),
  (2, 'Book2', 'Author2', '2021-02-01', true),
  (3, 'Book3', 'Author3', '2021-03-01', false);

-- Inserting sample data into members table
INSERT INTO members (member_id, first_name, last_name, email, join_date)
VALUES
  (1, 'John', 'Doe', 'john.doe@example.com', '2020-01-01'),
  (2, 'Jane', 'Smith', 'jane.smith@example.com', '2020-02-01');

-- Inserting sample data into loans table
INSERT INTO loans (loan_id, book_id, member_id, loan_date, return_date)
VALUES
  (1, 1, 1, '2022-01-01', '2022-01-15'),
  (2, 2, 1, '2022-02-01', NULL),
  (3, 3, 2, '2022-03-01', NULL);

