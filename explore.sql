--All lost and won quotes. There are more won quotes than lost quotes.

SELECT c.company_name,
		c.contact,
		c.email,
		c.phone,
		q.inquiry_date,
		q.county_id,
		q.response_date,
		q.quote_amount
FROM customers c
JOIN quotes q
ON c.id = q.customer_id
WHERE q.result = 'Lost';


SELECT c.company_name,
		c.contact,
		c.email,
		c.phone,
		q.inquiry_date,
		q.county_id,
		q.response_date,
		q.quote_amount
FROM customers c
JOIN quotes q
ON c.id = q.customer_id
WHERE q.result = 'Won';
