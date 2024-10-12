USE somebank;

/* 1- Write a SQL query to retrieve the name, account type and email of all customers. */
SELECT CONCAT(Customers.first_name, ' ', Customers.last_name) AS full_name, Accounts.account_type, Customers.email
FROM Customers
JOIN Accounts ON Customers.customer_id = Accounts.customer_id;

/* 2- Write a SQL query to list all transaction corresponding customer. */
SELECT Customers.customer_id, 
       CONCAT(Customers.first_name, ' ', Customers.last_name) AS full_name, 
       Accounts.account_id, 
       Transactions.transaction_id, 
       Transactions.transaction_type, 
       Transactions.amount, 
       Transactions.transaction_date
FROM Transactions
JOIN Accounts ON Transactions.account_id = Accounts.account_id
JOIN Customers ON Accounts.customer_id = Customers.customer_id;

/* 3- Write a SQL query to increase the balance of a specific account by a certain amount. */
UPDATE Accounts
SET balance = balance + 300
WHERE account_id = 1;

/* 4- Write a SQL query to Combine first and last names of customers as a full_name. */
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM Customers;

/* 5- Write a SQL query to remove accounts with a balance of zero where the account type is savings. */
DELETE FROM accounts
WHERE balance = 0 AND account_type = 'savings';

/* 6- Write a SQL query to Find customers living in a specific city. */
SELECT * FROM Customers
WHERE address LIKE '%Springfield%';

/* 7- Write a SQL query to Get the account balance for a specific account. */
SELECT balance FROM Accounts
WHERE account_id = 1;

/* 8- Write a SQL query to List all current accounts with a balance greater than $1,000. */
SELECT * FROM accounts
WHERE (balance > 1000);

/* 9- Write a SQL query to Retrieve all transactions for a specific account. */
SELECT * FROM Transactions
WHERE account_id = 4;

/* 10- Write a SQL query to Calculate the interest accured on savings accounts based on a given interest rate. */
SELECT account_id, 
       balance, 
       (balance * 4.5 / 100) AS interest_accrued
FROM Accounts
WHERE account_type = 'savings';

/* 11- Write a SQL query to Identify accounts where the balance is less than a specified overdraft limit. */
SELECT account_id, 
       account_type, 
       balance
FROM Accounts
WHERE balance < -500;

/* 12- Write a SQL query to Find customers not living in a specific city. */
SELECT customer_id, 
       CONCAT(first_name, ' ', last_name) AS full_name, 
       email, 
       phone_number, 
       address
FROM Customers
WHERE address NOT LIKE '%Springfield%';