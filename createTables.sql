CREATE TABLE customer(
 customerID INT NOT NULL AUTO_INCREMENT,
 lastName VARCHAR(150),
 firstName VARCHAR(150),
 streetAddress VARCHAR(255),
 aptNumber VARCHAR(25),
 city VARCHAR(100),
 state VARCHAR(50),
 zipCode INT,
 homePhone VARCHAR(50),
 mobilePhone VARCHAR(50),
 otherPhone VARCHAR(50),

 PRIMARY KEY (customerID)
);

CREATE TABLE salesOrder(
 orderID INT NOT NULL AUTO_INCREMENT,
 customerID INT NOT NULL,
 notes VARCHAR(255),
 orderDate DATE,

 PRIMARY KEY (orderID),

 FOREIGN KEY fk_customer (customerID)
 REFERENCES customer (customerID)
);

CREATE TABLE donut(
 donutID INT NOT NULL AUTO_INCREMENT,
 donutName VARCHAR(100),
 donutDescription VARCHAR(150),
 donutPrice DECIMAL(4,2),
  
 PRIMARY KEY (donutID)
);

CREATE TABLE quantity(
 donutID INT NOT NULL,
 orderID INT NOT NULL,
 quantity INT,

 PRIMARY KEY (donutID, orderID),

 FOREIGN KEY fk_donut (donutID)
 REFERENCES donut (donutID),
 FOREIGN KEY fk_salesOrder (orderID)
 REFERENCES salesOrder (orderID)
);
