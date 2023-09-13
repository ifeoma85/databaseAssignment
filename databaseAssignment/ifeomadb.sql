CREATE DATABASE ifeomadb;
USE DATABASE ifeomadb;

-- to create tables

CREATE TABLE items(
id int,
name varchar(20),
quantity int,
item_category varchar(20),
size varchar(20), 
price int,
date_produced date
)

CREATE TABLE category(
id int,
name varchar(20),
description varchar(255),
size varchar(20),
price int
)

CREATE TABLE customer(
id int, 
name varchar(20),
gender varchar(20),
contact varchar(20), 
customer_id int,
location varchar(20),
)

CREATE TABLE orders(
id int,
name varchar(20),
quantity int,
product_id varchar(20),
status varchar(20),
users_id int,
delivery_date date
)

CREATE TABLE staff(
id int,
name varchar(20),
gender varchar(20), 
contact varchar(20), 
role varchar(20),
DOB date,
date_of_employment date
)

CREATE TABLE users(
id int,
name varchar(20),
gender varchar(20), 
email varchar(20),
password varchar(20),
phone_number int, 
created_at date,
status varchar(20)
)

--to insert records
USE ifeomadb;
INSERT INTO category VALUES
("0415", "white shirt", "a sparkling blue diamond white shirt",
"large", "1500"
);

INSERT INTO customer VALUES
("001", "Otavie Ellah", "female", "080373933938",  "001", "Abuja");

INSERT INTO items VALUES
("0415", "white shirts", "wears", "3", "large", "1500",
"2012-6-20"
);

INSERT INTO orders VALUES
("0415", "white shirt", "3", "89479", "fairly used", "60", "2013-10-10"
);

INSERT INTO staff VALUES
("0415", "Ifeoma Ugwu", "female", "080373933938", "Backend Developer", "2001-8-9", "1988-7-9");


INSERT INTO users VALUES
  ("0415", "Otavie Ellah", "female", "ellahbaby@gmail.com", "goodness", "0145678765", "1990-8-29", "single");

  --to select records

  SELECT * FROM ifeomadb.users;

  SELECT name FROM category;

  SELECT name, email FROM users;

  --to update records

  UPDATE customer SET gender = male
    WHERE id = 01;

UPDATE items SET 
name = "bag",
quantity = 4,
size = "small"
WHERE id = 415;

--to delete records
DELETE FROM orders
WHERE id = 0415;

DELETE FROM category
WHERE id = 1;



  UPDATE ifeomadb SET size = small