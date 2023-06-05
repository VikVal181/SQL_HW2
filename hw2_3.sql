CREATE TABLE hw2.orders
(
ordeid INT AUTO_INCREMENT PRIMARY KEY,
employeeid VARCHAR(20),
amount DOUBLE,
orderstatus VARCHAR(20) 
);

INSERT INTO hw2.orders (employeeid, amount, orderstatus)
VALUES
('e03', 15.00,'OPEN'),
('e01', 25.50,'OPEN'),
('e05', 100.70,'CLOSED'),
('e02', 22.18,'OPEN'),
('e04', 9.50,'CANCELLED'),
('e04', 99.99,'OPEN');

SELECT ordeid, orderstatus,
CASE
WHEN orderstatus = 'OPEN'
THEN 'Order is in open state'
WHEN orderstatus = 'CLOSED'
THEN 'Order is closed'
WHEN orderstatus = 'CANCELLED'
THEN 'Order is cancelled'
ELSE 'Fail'
END AS order_summary
FROM hw2.orders;

