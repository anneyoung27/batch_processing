--- Example Extract
SELECT 	order_id,
		order_date,
		a.user_id,
		b.payment_name,
		c.shipper_name,
		order_price,
		order_discount,
		d.voucher_name,
		d.voucher_price,
		order_total,
		e.rating_status
FROM tb_orders a 
	LEFT JOIN tb_payments b ON a.payment_id = b.payment_id
	LEFT JOIN tb_shippers c ON a.shipper_id = c.shipper_id 
	LEFT JOIN tb_vouchers d ON a.voucher_id = d.voucher_id
	LEFT JOIN tb_ratings e ON a.rating_id = e.rating_id ;

SELECT 
    user_id,
	user_first_name,
	user_last_name,
	user_gender,
	user_address,
	user_birthday,
	user_join
FROM tb_users;

SELECT 
	o.order_id,
	u.user_id,
	v.voucher_id,
	p.product_id,
	oi.order_item_id,
	py.payment_id,
	s.shipper_id,
	r.rating_id,
	o.order_price,
	p.product_price,
	oi.product_subprice
FROM
	tb_orders o
	LEFT JOIN tb_users u ON u.user_id  = o.user_id 
	LEFT JOIN tb_vouchers v ON u.user_id = v.user_id
	LEFT JOIN tb_order_items oi ON o.order_id = oi.order_id
	LEFT JOIN tb_products p ON p.product_id = oi.product_id
	LEFT JOIN tb_payments py ON py.payment_id = o.payment_id
	LEFT JOIN tb_shippers s ON s.shipper_id = o.shipper_id
	LEFT JOIN tb_ratings r ON r.rating_id = o.rating_id;
