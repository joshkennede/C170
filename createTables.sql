CREATE TABLE customer(
 customerID     INT NOT NULL AUTO_INCREMENT,
 firstName      VARCHAR(50),
 lastName       VARCHAR(50),
 streetAddress  VARCHAR(100),
 aptNumber      VARCHAR(25),
 city           VARCHAR(50),
 state          VARCHAR(25),
 zipCode        INT,
 homePhone      VARCHAR(50),
 mobilePhone    VARCHAR(50),
 otherPhone     VARCHAR(50),

 PRIMARY KEY (customerID)
);

CREATE TABLE salesOrder(
 orderID    INT NOT NULL AUTO_INCREMENT,
 customerID INT NOT NULL,
 orderDate  DATE,
 notes      VARCHAR(255),

 PRIMARY KEY (orderID),

 FOREIGN KEY fk_customer (customerID)
 REFERENCES customer (customerID)
);

CREATE TABLE donut(
 donutID            INT NOT NULL AUTO_INCREMENT,
 donutName          VARCHAR(50),
 donutDescription   VARCHAR(100),
 donutPrice         DECIMAL(4,2),
  
 PRIMARY KEY (donutID)
);

CREATE TABLE quantity(
 orderID    INT NOT NULL,    
 donutID    INT NOT NULL,
 quantity   INT,

 PRIMARY KEY (donutID, orderID),

 FOREIGN KEY fk_donut (donutID)
 REFERENCES donut (donutID),
 FOREIGN KEY fk_salesOrder (orderID)
 REFERENCES salesOrder (orderID)
);
