CREATE TABLE [Users] (
    [user_id]	INT,
    [closed]	VARCHAR(512)
);

INSERT INTO [Users] ([user_id], [closed]) VALUES
	('1', '0'),
	('2', '0'),
	('3', '0'),
	('4', '0'),
	('5', '0'),
	('6', '0'),
	('7', '0'),
	('8', '0'),
	('9', '1'),
	('10', '0'),
	('11', '1'),
	('12', '0'),
	('13', '1'),
	('14', '1'),
	('15', '0'),
	('16', '0'),
	('17', '0'),
	('18', '0'),
	('19', '1'),
	('20', '0'),
	('21', '0'),
	('22', '1'),
	('23', '0'),
	('24', '1'),
	('25', '0'),
	('26', '0'),
	('27', '0'),
	('28', '0'),
	('29', '0'),
	('30', '0'),
	('31', '0'),
	('32', '0'),
	('33', '1'),
	('34', '0'),
	('35', '0'),
	('36', '0'),
	('37', '0'),
	('38', '0'),
	('39', '1'),
	('40', '0');
	
	
-- Payments table
CREATE TABLE [tableName] (
    [user_id]	INT,
    [amount]	INT
);

INSERT INTO [tableName] ([user_id], [amount]) VALUES
	('15', '122'),
	('22', '76'),
	('24', '20'),
	('18', '285'),
	('15', '64'),
	('17', '72'),
	('15', '57'),
	('34', '14'),
	('31', '180'),
	('10', '25'),
	('38', '38'),
	('5', '69'),
	('18', '64'),
	('40', '172'),
	('27', '218'),
	('28', '22'),
	('17', '18'),
	('22', '191'),
	('40', '61'),
	('13', '4'),
	('31', '3'),
	('20', '14'),
	('12', '33'),
	('38', '5'),
	('7', '108'),
	('38', '30'),
	('7', '37'),
	('25', '26'),
	('5', '75'),
	('5', '214'),
	('1', '55'),
	('37', '72'),
	('8', '14'),
	('32', '14'),
	('27', '30'),
	('12', '58'),
	('36', '66'),
	('1', '14'),
	('1', '122'),
	('24', '275'),
	('37', '214'),
	('27', '64'),
	('10', '75'),
	('13', '78'),
	('3', '30'),
	('33', '281'),
	('5', '76'),
	('30', '62'),
	('32', '122'),
	('13', '30'),
	('37', '56'),
	('16', '66'),
	('6', '76'),
	('39', '16'),
	('20', '214'),
	('14', '233'),
	('16', '256'),
	('31', '122'),
	('2', '3'),
	('20', '139'),
	('35', '122'),
	('19', '80'),
	('23', '49'),
	('26', '218'),
	('18', '33'),
	('28', '219'),
	('14', '208'),
	('1', '46'),
	('25', '281'),
	('28', '13'),
	('27', '56'),
	('36', '72'),
	('4', '78'),
	('30', '64'),
	('17', '64'),
	('26', '288'),
	('27', '22'),
	('14', '55'),
	('14', '172'),
	('26', '210'),
	('40', '57'),
	('37', '27'),
	('36', '46'),
	('23', '75'),
	('2', '64'),
	('20', '38'),
	('17', '275'),
	('18', '61'),
	('7', '208'),
	('30', '256'),
	('15', '105'),
	('10', '256'),
	('11', '38'),
	('11', '5'),
	('30', '219'),
	('38', '219'),
	('13', '56'),
	('37', '262'),
	('32', '45'),
	('25', '14'),
	('20', '105'),
	('17', '38'),
	('5', '55'),
	('20', '26'),
	('4', '4'),
	('25', '18'),
	('26', '122'),
	('21', '72'),
	('11', '23'),
	('4', '288'),
	('34', '33'),
	('18', '22'),
	('10', '22'),
	('17', '61'),
	('28', '56'),
	('12', '122'),
	('8', '4'),
	('26', '13'),
	('7', '16'),
	('30', '219'),
	('15', '131'),
	('22', '83'),
	('24', '28'),
	('18', '287'),
	('15', '73'),
	('17', '72'),
	('15', '65'),
	('34', '17'),
	('31', '187'),
	('10', '28'),
	('38', '42'),
	('5', '75'),
	('18', '65'),
	('40', '173'),
	('27', '219'),
	('28', '27'),
	('17', '25'),
	('22', '199'),
	('40', '67'),
	('13', '9'),
	('31', '8'),
	('20', '18'),
	('12', '33'),
	('38', '10'),
	('7', '112'),
	('38', '38'),
	('7', '37'),
	('25', '27'),
	('5', '78'),
	('5', '223'),
	('1', '63'),
	('37', '80'),
	('8', '21'),
	('32', '20'),
	('27', '33'),
	('12', '59'),
	('36', '68'),
	('1', '19'),
	('1', '130'),
	('24', '284'),
	('37', '219'),
	('27', '71'),
	('10', '77'),
	('13', '78'),
	('3', '37'),
	('33', '284'),
	('5', '84'),
	('30', '71'),
	('32', '130'),
	('13', '38'),
	('37', '61'),
	('16', '70'),
	('6', '81'),
	('39', '19'),
	('20', '215'),
	('14', '241'),
	('16', '263'),
	('31', '128'),
	('2', '11'),
	('20', '141'),
	('35', '131'),
	('19', '81'),
	('23', '51'),
	('26', '218'),
	('18', '38'),
	('28', '220'),
	('14', '217'),
	('1', '47'),
	('25', '281'),
	('28', '15'),
	('27', '57'),
	('36', '75'),
	('4', '81'),
	('30', '66'),
	('17', '67'),
	('26', '288'),
	('27', '22'),
	('14', '59'),
	('14', '174'),
	('26', '219'),
	('40', '59'),
	('37', '35'),
	('36', '54'),
	('23', '76'),
	('2', '65'),
	('20', '44'),
	('17', '282'),
	('18', '61'),
	('7', '211'),
	('30', '264'),
	('15', '109'),
	('10', '263'),
	('11', '40'),
	('11', '6'),
	('30', '224'),
	('38', '226'),
	('13', '61'),
	('37', '270'),
	('32', '47'),
	('25', '23'),
	('20', '112'),
	('17', '43'),
	('5', '63'),
	('20', '32'),
	('4', '5'),
	('25', '21'),
	('26', '129'),
	('21', '73'),
	('11', '29'),
	('4', '297'),
	('34', '42'),
	('18', '26'),
	('10', '23'),
	('17', '68'),
	('28', '58'),
	('12', '124'),
	('8', '11'),
	('26', '17'),
	('7', '23'),
	('30', '228');
	
