USE dblibrary
GO
/*-----------------Insert CustomerStatus-----------------*/
INSERT CustomerStatus 
	(statusName)
	VALUES 
		('Active'),
		('Late'),
		('Inactive')

/*-----------------Insert Customer-----------------*/
INSERT Customer 
	(customerName, phoneNumber, email, joinedDate, statusId)
	VALUES 
		(
			'Fernanda Ramirez', 
			'62572039', 
			'feramirez@gmail.com', 
			'2019-04-03',  
			1
		),
		(
			'Jesus Corona', 
			'81230296', 
			'jesuscorona@gmail.com', 
			'2020-07-17',  
			3
		),
		(
			'Maria Villanueva', 
			'34918347', 
			'mariavilla@gmail.com', 
			'2018-10-05',  
			3
		),
		(
			'Luis Mercado', 
			'51392860', 
			'luismercado@gmail.com', 
			'2021-02-20',  
			1
		),
		(
			'Sandra Padilla', 
			'28371649', 
			'sandrapadilla@gmail.com', 
			'2020-08-18',  
			2
		),
		(
			'Jorge Hernandez', 
			'29381547', 
			'jorgehdez@gmail.com', 
			'2020-05-16',  
			3
		),
		(
			'Monica Carrillo', 
			'63293740', 
			'monicarrillo@gmail.com', 
			'2019-11-07',  
			1
		),
		(
			'Pedro Valenzuela', 
			'32874362', 
			'pedrovalenzuela@gmail.com', 
			'2020-03-28',  
			1
		),
		(
			'Paola Acosta', 
			'25237482', 
			'paolaacosta@gmail.com', 
			'2019-12-05',  
			3
		),
		(
			'Francisco Romero', 
			'23527218', 
			'fcoromero@gmail.com', 
			'2021-09-10',  
			2
		)

/*-----------------Insert Category-----------------*/
INSERT Category 
	(categoryName)
	VALUES 
		('Fantasy'),
		('Horror'),
		('Romance'),
		('Science Fiction'),
		('Classics'),
		('Comic Book'),
		('Mistery'),
		('Fiction'),
		('History'),
		('Poetry')
/*-----------------Insert Book-----------------*/
INSERT Book 
	(title, categoryId, numPages, publicationDate, numCopies)
	VALUES 
		('Circe', 1, 492, '2018-04-10', 8),
		('Carrie', 2, 199, '1974-04-05', 10),
		('Royal Holiday', 3, 304, '2019-10-01', 5),
		('1984', 4, 326, '1949-06-08', 10),
		('Little Women', 5, 528, '1868-09-30', 8),
		('Watchmen', 6, 416, '1995-04-01', 5),
		('And Then There Were None', 7, 300, '2011-03-29', 8),
		('Olive Again', 8, 305, '2019-10-15', 10),
		('1776', 9, 400, '2005-05-24', 5),
		('The Sun and Her Flowers', 10, 256, '2017-10-03', 8)

/*-----------------Insert Author-----------------*/
INSERT Author 
	(authorName)
	VALUES 
		('Madeline Miller'),
		('Stephen King'),
		('Jasmine Guillory'),
		('George Orwell'),
		('Louisa May Alcott'),
		('Alan Moore'),
		('Agatha Christie'),
		('Elizabeth Strout'),
		('David McCullough'),
		('Rupi Kaur')

/*-----------------Insert BookAuthor-----------------*/
INSERT BookAuthor
	(bookId, authorId) 
	VALUES 
		(1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10)

/*-----------------Insert Loan-----------------*/
INSERT Loan 
	(bookId, customerId, loanDate, returnDate)
	VALUES
		(
			10, 
			1, 
			'2021-09-01', 
			'2021-09-15'
		),
		(
			9, 
			2, 
			'2021-09-04', 
			'2021-09-19'
		),
		(
			8, 
			3, 
			'2021-08-15', 
			'2021-08-30'
		),
		(
			7, 
			4, 
			'2021-10-01', 
			'2021-10-15'
		),
		(
			6, 
			5, 
			'2021-09-15', 
			'2021-09-30'
		),
		(
			5, 
			6, 
			'2021-09-06', 
			'2021-09-21'
		),
		(
			4, 
			7, 
			'2021-10-02', 
			'2021-10-17'
		),
		(
			3, 
			8, 
			'2021-08-01', 
			'2021-08-15'
		),
		(
			2, 
			9, 
			'2021-09-25', 
			'2021-10-10'
		),
		(
			1, 
			10, 
			'2021-09-28', 
			'2021-10-12'
		)
