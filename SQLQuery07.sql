CREATE TABLE Vendor (
  vendor_id int PRIMARY KEY,
  name varchar(50),
  city varchar(50)
);

CREATE TABLE Product (
  product_id int PRIMARY KEY,
  name varchar(50),
  price decimal(10,2),
  vendor_id int REFERENCES Vendor(vendor_id)
);

CREATE TABLE Supply (
  supply_id int PRIMARY KEY,
  vendor_id int REFERENCES Vendor(vendor_id),
  product_id int REFERENCES Product(product_id)
);


INSERT INTO Vendor (vendor_id, name, city)
VALUES (1, 'sii Grocery', 'New York'),
       (2, 'XYZ Inc.', 'Chicago'),
	   (3, 'Taco Lane', 'LA'),
	   (4, 'Just Picked', 'KA');


INSERT INTO Product (product_id, name, price, vendor_id)
VALUES (1, 'Apples', 1.99, 1),
       (2, 'Oranges', 2.49, 1),
       (3, 'Bananas', 0.99, 2),
       (4, 'Grapes', 3.99, 2);

INSERT INTO Supply (supply_id, vendor_id, product_id)
VALUES (1, 1, 1),
       (2, 1, 2),
       (3, 2, 3),
       (4, 2, 4);


	---Q7.
	SELECT *
	FROM Vendor;

	--Q8.
	SELECT *
	FROM Vendor 
	WHERE city = 'New York';

	---Q9.

	SELECT * FROM Product
	ORDER BY price DESC;
	

	---Q10.
ALTER TABLE Product ALTER COLUMN name VARCHAR(100);


	--Q11.
	UPDATE Product SET price = price * 0.9;


	---Q12.
	SELECT * FROM Product WHERE price > 2;

	---Q13.
	SELECT DISTINCT city FROM Vendor;


	---Q14.
	SELECT * FROM Product
INNER JOIN Vendor ON Product.vendor_id = Vendor.vendor_id;
----
SELECT * FROM Vendor
LEFT JOIN Supply ON Vendor.vendor_id = Supply.vendor_id;
----
SELECT * FROM Supply
RIGHT JOIN Product ON Supply.product_id = Product.product_id;
----
SELECT * FROM Vendor
FULL OUTER JOIN Supply ON Vendor.vendor_id = Supply.vendor_id;

