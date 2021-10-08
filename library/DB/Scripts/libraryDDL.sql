CREATE DATABASE dblibrary;
GO
USE dblibrary
GO

CREATE TABLE CustomerStatus
(
	statusId INT IDENTITY(1,1),
	statusName NVARCHAR(50) NOT NULL,
	PRIMARY KEY(statusId)
)

CREATE TABLE Customer
(
	customerId INT IDENTITY(1,1),
	customerName NVARCHAR(50) NOT NULL,
	phoneNumber NVARCHAR(10) NOT NULL,
	email NVARCHAR(100) NOT NULL,
	joinedDate DATE NOT NULL,
	statusId INT NOT NULL,
	PRIMARY KEY(customerId),
	FOREIGN KEY(statusId) REFERENCES CustomerStatus(statusId)
)

CREATE TABLE Category
(
	categoryId INT IDENTITY(1,1),
	categoryName NVARCHAR(50) NOT NULL,
	PRIMARY KEY(categoryId)
)

CREATE TABLE Book
(
	bookId INT IDENTITY(1,1),
	title NVARCHAR(50) NOT NULL,
	categoryId INT NOT NULL,
	numPages INT NOT NULL,
	publicationDate DATE NOT NULL,
	numCopies INT NOT NULL,
	PRIMARY KEY(bookId),
	FOREIGN KEY(categoryId) REFERENCES Category(categoryId)
)

CREATE TABLE Author
(
	authorId INT IDENTITY(1,1),
	authorName NVARCHAR(50) NOT NULL,
	PRIMARY KEY(authorId)
)

CREATE TABLE BookAuthor
(
	bookAuthorId INT IDENTITY(1,1),
	bookId INT NOT NULL,
	authorId INT NOT NULL,
	FOREIGN KEY(bookId) REFERENCES Book(bookId),
	FOREIGN KEY(authorId) REFERENCES Author(authorId)
)

CREATE TABLE Loan
(
	loanId INT IDENTITY(1,1),
	bookId INT NOT NULL,
	customerId INT NOT NULL,
	loanDate DATE NOT NULL,
	returnDate DATE NOT NULL,
	PRIMARY KEY(loanId),
	FOREIGN KEY(bookId) REFERENCES Book(bookId),
	FOREIGN KEY(customerId) REFERENCES Customer(customerId)
)

