
DROP TABLE IF EXISTS Sales_ag;

CREATE TABLE sales_ag (
	year INT,
	category varchar(15),
	amount INT
);


INSERT into Sales_ag (year, category, amount) values (2000, 'Automotive', 89);
INSERT into Sales_ag (year, category, amount) values (2000, 'Computers', 59);
INSERT into Sales_ag (year, category, amount) values (2000, 'Books', 19);
INSERT into Sales_ag (year, category, amount) values (2000, 'Movies', 74);
INSERT into Sales_ag (year, category, amount) values (2000, 'Garden', 74);
INSERT into Sales_ag (year, category, amount) values (2001, 'Clothing', 49);
INSERT into Sales_ag (year, category, amount) values (2001, 'Computers', 53);
INSERT into Sales_ag (year, category, amount) values (2001, 'Automotive', 65);
INSERT into Sales_ag (year, category, amount) values (2001, 'Garden', 24);
INSERT into Sales_ag (year, category, amount) values (2001, 'Movies', 39);