
DROP TABLE IF EXISTS Sales_ag;

CREATE TABLE sales_ag (
	year INT,
	category varchar(15),
	amount INT
)


INSERT into Sales_ag (year, category, amount) values (2000, 'Automotive', 89);
insert into Sales_ag (year, category, amount) values (2000, 'Computers', 59);
insert into Sales_ag (year, category, amount) values (2000, 'Books', 19);
insert into Sales_ag (year, category, amount) values (2000, 'Movies', 74);
insert into Sales_ag (year, category, amount) values (2000, 'Garden', 74);
insert into Sales_ag (year, category, amount) values (2001, 'Clothing', 49);
insert into Sales_ag (year, category, amount) values (2001, 'Computers', 53);
insert into Sales_ag (year, category, amount) values (2001, 'Automotive', 65);
insert into Sales_ag (year, category, amount) values (2001, 'Garden', 24);
insert into Sales_ag (year, category, amount) values (2001, 'Movies', 39);