USE somebank;

/* 1- Write a SQL query to retrieve the name, account type and email of all customers. */
SELECT CONCAT(Customers.first_name, ' ', Customers.last_name) AS full_name, Accounts.account_type, Customers.email
FROM Customers
JOIN Accounts ON Customers.customer_id = Accounts.customer_id;