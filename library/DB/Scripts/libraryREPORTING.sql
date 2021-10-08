USE dblibrary
GO

/* 1) Vista de los libros con su respectivo autor */
CREATE VIEW ViewBookWithAuthor
AS
SELECT 
	b.title,
	a.authorName
FROM 
	Book b
JOIN BookAuthor ba
ON
	ba.bookId = b.bookId
JOIN Author a
ON
	a.authorId = ba.authorId
GO

/* 2) Numero de usuarios que se unieron antes del 2020 */
SELECT COUNT(customerName) 
AS numCustomers
FROM Customer
WHERE joinedDate < '2020-01-01'
GO

/* 3) Numero de usuarios que se unieron despues del 2020 */
SELECT COUNT(customerName) 
AS numCustomers
FROM Customer
WHERE joinedDate >= '2020-01-01'
GO

/* 4) Menor num copias por categoria */
SELECT MIN(sumCopies)
FROM ViewNumCopiesByCategory
GO

/* 5) Mayor num copias por categoria */
SELECT MAX(sumCopies)
FROM ViewNumCopiesByCategory
GO

/* 6) Vista para el numero de copias por categoria */
CREATE VIEW ViewNumCopiesByCategory
AS
SELECT 
	c.categoryName,
	SUM(b.numCopies) AS sumCopies
FROM
	Category c
JOIN Book b
ON
	c.categoryId = b.categoryId
GROUP BY 
	c.categoryName
GO

/* 7) Numero de clientes activos */
SELECT COUNT(customerName)
AS numCustomers
FROM Customer
WHERE statusId = 1
GO

/* 8) Vista de clientes activos */
CREATE VIEW ViewActiveCustomers
AS
SELECT 
	customerId,
	customerName
FROM Customer
WHERE statusId = 1
GO

/* 9) Numero de clientes con retraso */
SELECT COUNT(customerName)
AS numCustomers
FROM Customer
WHERE statusId = 2
GO

/* 10) Numero de libros publicados despues del 2000 */
SELECT COUNT(title)
AS numBooks
FROM Book
WHERE publicationDate >= '2000-01-01'
GO

/* 11) Numero de libros publicados antes del 2000 */
SELECT COUNT(title)
AS numBooks
FROM Book
WHERE publicationDate < '2000-01-01'
GO

/* 12) Numero total de libros */
SELECT SUM(numCopies) totalBooks
FROM Book
GO

/* 13) Historial de prestamos */
CREATE VIEW ViewLoanHistory
AS
SELECT 
	c.customerName,
	b.title,
	l.loanDate 
FROM
	Customer c
JOIN Loan l
ON c.customerId = l.customerId
JOIN Book b
ON l.bookId = b.bookId
GO

/* 13) Vista de numero de prestamos por cliente */
CREATE VIEW ViewNumLoans
AS
SELECT
	customerName,
	COUNT(loanDate) AS numLoans
FROM
	ViewLoanHistory
GROUP BY 
	customerName
GO

/* 14) Promedio de prestamos */
SELECT AVG(numLoans)
AS avgNumLoans
FROM ViewNumLoans
GO

/* 15) Menor numero de prestamos */
SELECT MIN(numLoans)
AS minNumLoans
FROM ViewNumLoans
GO

/* 16) Mayor numero de prestamos */
SELECT MAX(numLoans)
AS minNumLoans
FROM ViewNumLoans
GO

