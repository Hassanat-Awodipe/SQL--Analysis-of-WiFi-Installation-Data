SELECT i.customer_id,
		i.actual_start,
		c.start_date,
		c.customer_id,
		q.result
FROM contracts c
JOIN installs i
ON c.customer_id = i.customer_id
JOIN quotes q
ON c.customer_id = q.customer_id ;

SELECT *
FROM quotes
WHERE result = 'Won';
--produces 38,098 rows

SELECT *
FROM installs;
--produces 31,036 rows
--therefore not all won contracts were actually carried out.

SELECT MIN(mrr)
FROM contracts
WHERE mrr <= '0';
--this shows that 41,566 were signed and all were paid for.

-- get the inquiry dates (quotes), response date, scheduled date, actual start (installs), start date(contracts)
--i don't expect lost quotes to have a scheduled date.

--get all won contracts,
--get all scheduled date
