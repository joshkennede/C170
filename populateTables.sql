INSERT INTO customer 
(lastName, firstName, streetAddress, aptNumber, city,
state, zipCode, homePhone, mobilePhone, otherPhone)
VALUES ('Joshua', 'Kennedy', '6666 Donut Time', '666', 'Lacey', 'WA',
'98503', '3601234567', '2067894563', '2537891234');

INSERT INTO salesOrder 
(customerID, notes, orderDate)
VALUES (1, 'Please include plates and napkins', '2014-05-06');

INSERT INTO donut 
(donutName, donutDescription, donutPrice)
VALUES
 ('Plain', 'Plain Donut', '1.50'),
 ('Glazed', 'Glazed Donut', '1.75'),
 ('Cinnamon', 'Cinnamon Donut', '1.75'),
 ('Chocolate', 'Chocolate Donut', '1.75'),
 ('Sprinkle', 'Sprinkle Donut', '1.75'),
 ('Gluten-Free', 'Gluten-Free Donut', '1.75');
 
INSERT INTO quantity 
(donutID, orderID, quantity)
VALUES
 (1, 1, 1),
 (2, 1, 5),
 (3, 1, 12),
 (4, 1, 3),
 (5, 1, 4),
 (6, 1, 5);