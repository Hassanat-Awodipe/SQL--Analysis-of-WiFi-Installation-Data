--1.
CREATE TABLE customers(
	company_name VARCHAR(40),
	id SMALLINT NOT NULL PRIMARY KEY,
	contact VARCHAR(40),
	email VARCHAR(40),
	phone VARCHAR(20),
	segment VARCHAR(40),
	company_size VARCHAR(20)
);

SELECT *
FROM customers;

--2.

CREATE TABLE offices(
	county_id INT NOT NULL PRIMARY KEY,
	county VARCHAR(60),
	state VARCHAR(30),
	state_abb VARCHAR(30),
	territory VARCHAR(20),
	region VARCHAR(20),
	district VARCHAR(20)
);

SELECT *
FROM offices;

--3.
CREATE TABLE dates(
	date TIMESTAMP NOT NULL PRIMARY KEY,
	year SMALLINT ,
	month_number SMALLINT,
	week_number SMALLINT,
	day_number SMALLINT,
	day_name VARCHAR(10),
	year_quarter SMALLINT,
	month_name  VARCHAR(10)
);

SELECT *
FROM dates;

--4
CREATE TABLE contracts(
	contract_id INT NOT NULL PRIMARY KEY,
	customer_id INT,
	county_id INT,
	facility_id INT,
	start_date TIMESTAMP,
	MRR money,
	SLA_Days SMALLINT,
	end_date TIMESTAMP,
	FOREIGN KEY (customer_id) REFERENCES customers(id)
	--FOREIGN KEY (county_id) REFERENCES offices(county_id)
);

SELECT *
FROM contracts;

--5.
CREATE TABLE installs(
	scheduled_start TIMESTAMP,
	scheduled_complete TIMESTAMP,
	customer_id SMALLINT,
	county_id INT,
	facility_id INT NOT NULL PRIMARY KEY,
	actual_start TIMESTAMP,
	actual_complete TIMESTAMP,
	--FOREIGN KEY (customer_id) REFERENCES customers(id),
	--FOREIGN KEY (scheduled_start) REFERENCES dates(date),
	FOREIGN KEY (county_id) REFERENCES offices(county_id)
);

SELECT *
FROM installs;


--6.
CREATE TABLE Quotes(
	inquiry_date TIMESTAMP,
	county_id INT,
	customer_id SMALLINT,
	estimate_size INT,
	response_date TIMESTAMP,
	result VARCHAR(10),
	quote_amount INT,
	response_days SMALLINT,
	FOREIGN KEY (customer_id) REFERENCES customers(id),
	FOREIGN KEY (inquiry_date) REFERENCES dates(date),
	FOREIGN KEY (county_id) REFERENCES offices(county_id)
);

SELECT *
FROM quotes;

