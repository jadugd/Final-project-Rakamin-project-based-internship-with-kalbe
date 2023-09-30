select * from customer_orders co 
where co.purchase_amount < 100
or not (order_date > '2022-08-25' and customer_id > 2001)