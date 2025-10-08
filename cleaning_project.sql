DROP DATABASE finance_data;

-- create new table so we can use it without mess with our real data
CREATE TABLE staging AS 
SELECT * FROM dirty_financial_transactions;


-- Solve duplicates problem

-- checking where the duplicates are and Create a new table with num_row in it
WITH cte_dupl AS
(
SELECT *, 
ROW_NUMBER() OVER(
PARTITION BY transaction_id, customer_id, transaction_date, transaction_amount, currency,
			payment_method, merchant_name, country, transaction_status) AS num_row
FROM staging 
) 
SELECT * 
FROM cte_dupl; 

CREATE TABLE `staging2` (
  `transaction_id` text,
  `customer_id` text,
  `transaction_date` text,
  `transaction_amount` text,
  `currency` text,
  `payment_method` text,
  `merchant_name` text,
  `country` text,
  `transaction_status` text,
  `num_row` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO staging2
SELECT *, 
ROW_NUMBER() OVER(
PARTITION BY transaction_id, customer_id, transaction_date, transaction_amount, currency,
			payment_method, merchant_name, country, transaction_status) AS num_row
FROM staging;

-- Remove the duplicates
DELETE 
FROM staging2
WHERE num_row > 1;

SELECT * FROM staging2 
WHERE num_row > 1;

-- Standardizing our data 
UPDATE staging2 
SET merchant_name = TRIM(merchant_name);

-- We need also fix payment_method (credit card = CREDIT_CARD = Credit Card)
SELECT * FROM staging2;

UPDATE staging2
SET payment_method = 'credit card'
WHERE payment_method = 'CREDIT_CARD' 
   OR payment_method = 'Credit Card';
   
-- convert transaction_date column from text to datetime 
UPDATE staging2
SET transaction_date =
CASE 
    WHEN transaction_date LIKE '%/%/%'
       THEN STR_TO_DATE(transaction_date, '%d/%m/%Y')
	WHEN transaction_date LIKE '%-%-%' 
       THEN STR_TO_DATE(transaction_date, '%Y-%m-%d')
ELSE NULL
END;

ALTER TABLE staging2 
MODIFY COLUMN transaction_date Date; 

