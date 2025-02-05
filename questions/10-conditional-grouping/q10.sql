
-- DROP TABLE IF EXISTS q10_payers;

CREATE TABLE q10_payers (
    payment_id	INT,
    payer 	INT
);

INSERT INTO q10_payers (payment_id, payer ) VALUES
	('1', '14 '),
	('2', '14 '),
	('3', '14 '),
	('4', '1 '),
	('5', '1 '),
	('6', '6 '),
	('7', '6 '),
	('8', '7 '),
	('9', '7 '),
	('10', '3 '),
	('11', '3 '),
	('12', '3 '),
	('13', '3 '),
	('14', '7 '),
	('15', '7 '),
	('16', '7 '),
	('17', '4 '),
	('18', '12 '),
	('19', '12 '),
	('20', '12 ');

-- 	drop table if exists cash ;

	CREATE TABLE Cash (
    receiver	INT,
    payment_id	INT,
    Amount 	INT
);

INSERT INTO Cash (payment_id, receiver,  Amount ) VALUES
	('1', '7', '45 '),
	('4', '1', '4 '),
	('13','3',  '84 '),
	('18','7',  '94 '),
	('19','7',  '25 '),
	('20','7',  '80 ');


-- 	drop table if exists bit;

	CREATE TABLE Bit (
    receiver	INT,
    payment_id	INT,
    amount 	INT
);

INSERT INTO Bit (payment_id, receiver, amount ) VALUES
	('2', '7', '17 '),
	('5', '7', '89 '),
	('10','1',  '31 '),
	('14','22', '23 '),
	('16','22', '63 '),
	('17','7',  '75 ');

-- 	drop table if exists checks;

	CREATE TABLE checks (
    receiver	INT,
    payment_id	INT,
    amount 	INT
);

INSERT INTO Checks (payment_id, receiver, amount ) VALUES
	('7', '7', '47 '),
	('8', '21','42 '),
	('15','22', '1 '),
	('6', '7', '26 ');


-- drop table q10_payments;

CREATE TABLE q10_payments (
    payer	INT,
    receiver	INT,
    payment_id	INT,
    Transaction_date	DATE,
    Amount 	INT
);

INSERT INTO q10_payments (payer, receiver, payment_id, Transaction_date, Amount ) VALUES
	('14', '7', '1', '2020-06-30', '45'),
	('14', '7', '2', '2020-07-28', '17'),
	('14', '7', '3', '2020-07-29', '24'),
	('1', '7', '4', '2020-08-27', '4'),
	('1', '7', '5', '2020-08-28', '89'),
	('6', '7', '6', '2020-08-29', '26'),
	('6', '7', '7', '2020-08-30', '47'),
	('7', '21', '8', '2020-08-31', '42'),
	('7', '21', '9', '2020-09-01', '52'),
	('3', '1', '10', '2020-09-04', '31'),
	('3', '1', '11', '2020-09-05', '92'),
	('3', '1', '12', '2020-09-06', '54'),
	('3', '1', '13', '2020-09-07', '84'),
	('7', '22', '14', '2020-09-08', '23'),
	('7', '22', '15', '2020-09-09', '1'),
	('7', '22', '16', '2020-09-10', '63'),
	('4', '7', '17', '2021-05-28', '75'),
	('12', '7', '18', '2021-06-30', '94'),
	('12', '7', '19', '2021-07-28', '25'),
	('12', '7', '20', '2021-07-29', '80');
