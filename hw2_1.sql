CREATE SCHEMA hw2 ;

CREATE TABLE hw2.sales
(
Id INT AUTO_INCREMENT PRIMARY KEY,
order_date DATE,
bucket INTEGER 
);

INSERT INTO hw2.sales (order_date, bucket)
VALUES
('2021-01-01', 300),
('2021-01-02', 200),
('2021-01-03', 80),
('2021-01-04', 134),
('2021-01-05', 1000);

SELECT * FROM hw2.sales