CREATE DATABASE shop;

USE shop;

CREATE TABLE customer(
	cus_id INT PRIMARY KEY,
    cust VARCHAR(50),
    mode varchar(50),
    city VARCHAR(50)
);

INSERT INTO customer
(cus_id,cust,mode,city)
VALUES 
(101,"Olivia Barrett","Netbanking","Portland"),
(102,"Ethan Sinclair","Credit Card","Miami"),
(103,"Maya Hemandez","Credit Card","Seattle"),
(104,"Liam Donovan","Netbanking","Denver"),
(105,"Sofia Nguyen","Credit Card","New Orleans"),
(106,"Caleb Foster","Debit Card","Minnepolis"),
(107,"Ava Patel","Debit Card","Phoenix"),
(108,"Lucas Caarter","Netbanking","Boston"),
(109,"Isabell Martinez","Netbanking","Nathville"),
(110,"Jackson Brooks","Credit Card","Boston");

SELECT mode,COUNT(cus_id)
FROM customer
GROUP BY mode;
