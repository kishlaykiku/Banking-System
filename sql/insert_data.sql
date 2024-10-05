-- Inserting data into the Customers table
INSERT INTO Customers (first_name, last_name, DOB, email, phone_number, address)
VALUES 
('John', 'Doe', '1985-06-15', 'john.doe@example.com', '9876543210', '123 Elm Street, Springfield'),
('Jane', 'Smith', '1990-11-23', 'jane.smith@example.com', '9876543211', '456 Maple Avenue, Springfield'),
('Michael', 'Johnson', '1978-04-10', 'michael.johnson@example.com', '9876543212', '789 Oak Lane, Springfield'),
('Emily', 'Davis', '1992-07-18', 'emily.davis@example.com', '9876543213', '101 Birch Road, Springfield'),
('Robert', 'Brown', '1981-03-05', 'robert.brown@example.com', '9876543214', '202 Pine Street, Springfield'),
('Laura', 'Wilson', '1988-12-25', 'laura.wilson@example.com', '9876543215', '303 Cedar Avenue, Springfield'),
('David', 'Taylor', '1995-05-16', 'david.taylor@example.com', '9876543216', '404 Walnut Street, Springfield'),
('Sarah', 'Moore', '1983-08-30', 'sarah.moore@example.com', '9876543217', '505 Ash Boulevard, Springfield'),
('James', 'White', '1975-02-20', 'james.white@example.com', '9876543218', '606 Redwood Drive, Springfield'),
('Linda', 'Martin', '1986-09-09', 'linda.martin@example.com', '9876543219', '707 Poplar Way, Springfield');

-- Inserting data into the Accounts table
INSERT INTO Accounts (customer_id, account_type, balance)
VALUES 
(1, 'savings', 1500.00),
(2, 'current', 10000.00),
(3, 'savings', 5000.00),
(4, 'zero_balance', 0.00),
(5, 'savings', 2500.00),
(6, 'current', 8000.00),
(7, 'savings', 1200.00),
(8, 'current', 4000.00),
(9, 'zero_balance', 0.00),
(10, 'savings', 3500.00);

-- Inserting data into the Transactions table
INSERT INTO Transactions (account_id, transaction_type, amount)
VALUES
(1, 'deposit', 1000.00),
(1, 'withdrawal', 500.00),
(2, 'deposit', 5000.00),
(2, 'withdrawal', 1000.00),
(3, 'deposit', 2500.00),
(3, 'withdrawal', 200.00),
(4, 'deposit', 1500.00),
(5, 'withdrawal', 500.00),
(6, 'deposit', 3000.00),
(6, 'withdrawal', 1500.00),
(7, 'deposit', 1000.00),
(8, 'withdrawal', 2000.00),
(9, 'deposit', 500.00),
(10, 'withdrawal', 100.00),
(10, 'deposit', 300.00);