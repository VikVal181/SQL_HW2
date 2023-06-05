ALTER TABLE hw2.sales ADD COLUMN bucket_size VARCHAR(20);
UPDATE hw2.sales 
SET bucket_size = IF( bucket <100, 'Small order', 
IF(bucket < 300,  'Medium order', 'Big order'));
SELECT * FROM hw2.sales;