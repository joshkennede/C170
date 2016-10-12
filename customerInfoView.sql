CREATE VIEW customerInfo AS
 SELECT CONCAT(firstName,' ',lastName) fullName,
 customerID,
 streetAddress,
 aptNumber,
 city,
 state,
 zipCode,
 homePhone,
 mobilePhone,
 otherPhone
 FROM customer;