USE dblibrary
GO
/*----------------- TEST CRUD CustomerStatus-----------------*/
EXEC sp_insertCustomerStatus 'Test Status';
EXEC sp_selectCustomerStatus;
EXEC sp_updateCustomerStatus 1, 'Active Loan';
EXEC sp_deleteCustomerStatus 4;
EXEC sp_selectCustomerStatus;
GO

/*----------------- TEST CRUD Customer-----------------*/
EXEC sp_insertCustomer 'Karla Galindo', '62538273', 'karlagalindo@gmail.com', '2021-10-07', 1;
EXEC sp_selectCustomer;
EXEC sp_updateCustomer 9, 'Paola Medina', '25237482', 'paolamedina@gmail.com', '2019-12-05', 3;
EXEC sp_deleteCustomer 11;
EXEC sp_selectCustomer;
GO

/*----------------- TEST CRUD Category-----------------*/
EXEC sp_insertCategory 'Essays';
EXEC sp_selectCategory;
EXEC sp_updateCategory 5, 'Classic';
EXEC sp_deleteCategory 11;
EXEC sp_selectCategory;
GO

/*----------------- TEST CRUD Book-----------------*/
EXEC sp_insertBook 'To Kill A Mockingbird', 5, 336, '2002-01-01', 10;
EXEC sp_selectBook;
EXEC sp_updateBook 1, 'Circe', 1, 520, '2018-04-18', 8;
EXEC sp_deleteBook 11;
EXEC sp_selectBook;
GO

/*----------------- TEST CRUD Author-----------------*/
EXEC sp_insertAuthor 'Alexandre Dumas';
EXEC sp_selectAuthor;
EXEC sp_updateAuthor 5, 'Louisa M. Alcott';
EXEC sp_deleteAuthor 11;
EXEC sp_selectAuthor;
GO

/*----------------- TEST CRUD BookAuthor-----------------*/
EXEC sp_insertBookAuthor 1, 2;
EXEC sp_selectBookAuthor;
EXEC sp_updateBookAuthor 11, 1, 1;
EXEC sp_selectBookAuthor;
EXEC sp_deleteBookAuthor 11;