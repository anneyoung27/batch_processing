-- Example DWH

DROP TABLE IF EXISTS dim_orders;
CREATE TABLE dim_orders (
	order_id INT NOT NULL,
	order_date DATE NOT NULL,
	user_id INT NOT NULL,
	payment_name VARCHAR(255),
	shipper_name VARCHAR(255),
	order_price INT,
	order_discount INT,
	voucher_name VARCHAR(255),
	voucher_price INT,
	order_total INT,
	rating_status VARCHAR(255)
	);

DROP TABLE IF EXISTS dim_users;
CREATE TABLE dim_users ( 
	user_id INT NOT NULL, 
	user_first_name VARCHAR(255), 
	user_last_name VARCHAR(255),
	user_gender VARCHAR(50),
	user_address VARCHAR(255),
	user_birthday VARCHAR(255),
	user_join DATE NOT NULL);

DROP TABLE IF EXISTS fact_orders;
CREATE TABLE fact_orders( 
	order_id INT NOT NULL,
	user_id INT NOT NULL,
	voucher_id INT NOT NULL,
	product_id INT NOT NULL,
	order_item_id INT NOT NULL,
	payment_id INT NOT NULL,
	shipper_id INT NOT NULL,
	rating_id INT NOT NULL,
	order_price INT,
	product_price INT,
	product_subprice INT
);