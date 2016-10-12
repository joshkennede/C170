SELECT orderDate,
 a.orderID,
 b.customerID,
 firstName,
 lastName,
 streetAddress,
 aptNumber,
 city,
 state,
 zipCode,
 homePhone,
 mobilePhone,
 otherPhone,
 quantity,
 c.donutID,
 donutName,
 donutDescription,
 donutPrice,
 notes
FROM salesOrder AS a
 JOIN customer AS b
 ON a.customerID = b.customerID
 JOIN quantity AS d
 ON a.orderID = d.orderID
 JOIN donut AS c
 ON c.donutID = d.donutID;