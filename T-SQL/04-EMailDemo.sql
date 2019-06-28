USE Demo
GO

IF EXISTS(SELECT 1 FROM sys.objects WHERE name = 'customer') DROP TABLE Customer
GO

CREATE TABLE Customer
(
	id INTEGER IDENTITY PRIMARY KEY
	,name VARCHAR(200)
	,email VARCHAR(1000)
);

INSERT Customer(name, email) VALUES('Peter Willmot', 'Peter@Qri.ie')
INSERT Customer(name, email) VALUES('Donald Trump', '@TheDonald')
INSERT Customer(name, email) VALUES('Mickey Mouse', 'mickey@disney.com')
INSERT Customer(name, email) VALUES('John Smith', 'john@invalid')
INSERT Customer(name, email) VALUES('Jane Smith', 'jane@.com')


SELECT name, email, dbo.IsValidEMailAddress(email)
FROM Customer
