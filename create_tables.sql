CREATE TABLE employees
(
	first_name varchar(250) NOT NULL,
	last_name varchar(250) NOT NULL,
	title varchar(250) NOT NULL,
	birth_date date,
	notes text,
	employee_id serial PRIMARY KEY
);

CREATE TABLE customers
(
	customer_id varchar(5) UNIQUE PRIMARY KEY,
	company_name varchar(100) NOT NULL,
	contact_name varchar(100) NOT NULL
);

CREATE TABLE orders
(
	order_id int PRIMARY KEY,
	customer_id varchar(5) REFERENCES customers(customer_id) NOT NULL,
	employee_id int REFERENCES employees(employee_id) NOT NULL,
	order_date varchar(250) NOT NULL,
	ship_city varchar (250) NOT NULL
)