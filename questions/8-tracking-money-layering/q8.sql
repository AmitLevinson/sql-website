drop table ml_payments;

CREATE TABLE ml_payments(
   from_user    VARCHAR(4) NOT NULL PRIMARY KEY
  ,to_user      VARCHAR(4) NOT NULL
  ,amount       INTEGER  NOT NULL
  ,payment_date DATETIME  NOT NULL
);
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7804','4360',200,'2023-02-28T22:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('1237','5790',242,'2023-02-28T22:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('5363','7800',241,'2023-02-28T22:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6382','5619',224,'2023-02-28T22:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7962','2729',184,'2023-02-28T23:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6165','5363',170,'2023-02-28T23:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2165','2502',198,'2023-02-28T23:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('5867','8562',285,'2023-02-28T23:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2021','4386',253,'2023-03-01T00:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('1378','6818',264,'2023-03-01T00:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4360','7503',199,'2023-03-01T00:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4192','6165',223,'2023-03-01T00:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7764','7226',226,'2023-03-01T01:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('5517','7962',294,'2023-03-01T01:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('1150','2021',297,'2023-03-01T01:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2502','6816',262,'2023-03-01T01:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('9990','2625',177,'2023-03-01T02:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7503','6491',198,'2023-03-01T02:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('547','7800',283,'2023-03-01T02:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2021','8319',208,'2023-03-01T02:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('355','976',212,'2023-03-01T03:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('3113','928',172,'2023-03-01T03:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4056','7498',155,'2023-03-01T03:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2508','5867',286,'2023-03-01T03:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2135','672',280,'2023-03-01T04:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4241','4386',245,'2023-03-01T04:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2587','5517',184,'2023-03-01T04:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6491','3037',198,'2023-03-01T04:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2021','4111',260,'2023-03-01T05:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('9003','3113',169,'2023-03-01T05:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6675','3440',279,'2023-03-01T05:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('8193','976',189,'2023-03-01T05:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6382','6914',300,'2023-03-01T06:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4463','1657',279,'2023-03-01T06:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('1416','8562',181,'2023-03-01T06:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('3037','9484',198,'2023-03-01T06:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('1416','4111',162,'2023-03-01T07:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2502','4386',212,'2023-03-01T07:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('5669','6286',267,'2023-03-01T07:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('8889','928',153,'2023-03-01T07:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4915','3113',284,'2023-03-01T08:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('8319','9249',240,'2023-03-01T08:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4400','9990',204,'2023-03-01T08:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4241','8074',258,'2023-03-01T08:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('9492','9816',265,'2023-03-01T09:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2135','8074',188,'2023-03-01T09:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('9484','2885',197,'2023-03-01T09:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('870','9207',259,'2023-03-01T09:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('5948','4896',260,'2023-03-01T10:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7764','4478',182,'2023-03-01T10:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6818','7949',150,'2023-03-01T10:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6765','547',216,'2023-03-01T10:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6818','2784',221,'2023-03-01T11:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2885','1841',196,'2023-03-01T11:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('5669','4056',223,'2023-03-01T11:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('392','6862',287,'2023-03-01T11:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('5067','7869',253,'2023-03-01T12:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7962','2700',177,'2023-03-01T12:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6675','1867',178,'2023-03-01T12:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4056','7111',197,'2023-03-01T12:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2729','5948',244,'2023-03-01T13:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('9249','6382',208,'2023-03-01T13:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('258','4241',274,'2023-03-01T13:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('1841','7627',196,'2023-03-01T13:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('1408','7520',281,'2023-03-01T14:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2502','7190',264,'2023-03-01T14:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('9725','8889',221,'2023-03-01T14:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('3900','1101',178,'2023-03-01T14:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('3113','870',295,'2023-03-01T15:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('657','2587',150,'2023-03-01T15:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6862','4463',278,'2023-03-01T15:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('5669','2135',207,'2023-03-01T15:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7627','5923',196,'2023-03-01T16:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2700','9207',150,'2023-03-01T16:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7687','1408',295,'2023-03-01T16:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('9492','6313',162,'2023-03-01T16:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4719','1733',272,'2023-03-01T17:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6165','180',274,'2023-03-01T17:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2587','5616',195,'2023-03-01T17:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('5923','9464',195,'2023-03-01T17:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('1101','5517',259,'2023-03-01T18:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4478','6286',172,'2023-03-01T18:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('9725','2502',227,'2023-03-01T18:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6313','9098',186,'2023-03-01T18:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4426','1867',275,'2023-03-01T19:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4478','392',268,'2023-03-01T19:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2587','4200',179,'2023-03-01T19:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7226','4386',255,'2023-03-01T19:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4400','392',206,'2023-03-01T20:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('9464','781',194,'2023-03-01T20:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2625','500',162,'2023-03-01T20:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('1101','9962',218,'2023-03-01T20:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('3900','9098',155,'2023-03-01T21:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2318','4937',213,'2023-03-01T21:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('781','7364',194,'2023-03-01T21:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2318','4247',245,'2023-03-01T21:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('9962','2165',212,'2023-03-01T22:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('1867','9098',200,'2023-03-01T22:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2135','163',272,'2023-03-01T22:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('5669','4156',234,'2023-03-01T22:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2381','4426',233,'2023-03-01T23:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4200','2021',211,'2023-03-01T23:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('392','6862',258,'2023-03-01T23:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('954','3440',274,'2023-03-01T23:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7364','191',194,'2023-03-02T00:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6862','180',298,'2023-03-02T00:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('8193','9249',259,'2023-03-02T00:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('672','2165',236,'2023-03-02T00:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2135','8474',162,'2023-03-02T01:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('191','1577',193,'2023-03-02T01:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('1094','3113',251,'2023-03-02T01:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('1133','1416',203,'2023-03-02T01:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2700','7949',233,'2023-03-02T02:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('500','3669',242,'2023-03-02T02:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('8074','3302',180,'2023-03-02T02:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('163','2502',286,'2023-03-02T02:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('1237','4719',299,'2023-03-02T03:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('1577','2921',192,'2023-03-02T03:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4200','7800',241,'2023-03-02T03:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6765','9272',181,'2023-03-02T03:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4719','3669',257,'2023-03-02T04:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('3900','5867',195,'2023-03-02T04:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7558','2502',187,'2023-03-02T04:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2508','1733',157,'2023-03-02T04:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('180','7241',168,'2023-03-02T05:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4463','2700',271,'2023-03-02T05:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2921','6093',192,'2023-03-02T05:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('5790','9003',231,'2023-03-02T05:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('1378','2165',180,'2023-03-02T06:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4247','552',216,'2023-03-02T06:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7449','2165',171,'2023-03-02T06:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7869','4400',258,'2023-03-02T06:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4111','8474',176,'2023-03-02T07:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6093','3423',192,'2023-03-02T07:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('657','928',273,'2023-03-02T07:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('5013','1733',176,'2023-03-02T07:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('8193','7869',174,'2023-03-02T08:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('592','8319',225,'2023-03-02T08:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4386','4192',254,'2023-03-02T08:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('954','7800',192,'2023-03-02T08:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4937','258',209,'2023-03-02T09:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2587','7800',160,'2023-03-02T09:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('8647','1657',194,'2023-03-02T09:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('3423','5649',191,'2023-03-02T09:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4478','7498',233,'2023-03-02T10:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7764','5669',163,'2023-03-02T10:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('180','4719',183,'2023-03-02T10:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4478','6862',152,'2023-03-02T10:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('928','7791',169,'2023-03-02T11:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('5649','1721',190,'2023-03-02T11:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('8193','7449',165,'2023-03-02T11:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7241','7687',226,'2023-03-02T11:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6914','7687',202,'2023-03-02T12:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7226','592',172,'2023-03-02T12:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2700','9990',277,'2023-03-02T12:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2625','2784',237,'2023-03-02T12:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2508','5948',162,'2023-03-02T13:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2135','8193',255,'2023-03-02T13:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4400','6675',276,'2023-03-02T13:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6675','928',247,'2023-03-02T13:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6816','1867',291,'2023-03-02T14:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('547','4247',295,'2023-03-02T14:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('5517','7962',274,'2023-03-02T14:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('4056','2508',224,'2023-03-02T15:00:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('7498','1657',221,'2023-03-02T15:15:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('6862','8889',274,'2023-03-02T15:30:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('2021','6675',185,'2023-03-02T15:45:00Z');
INSERT INTO ml_payments(from_user,to_user,amount,payment_date) VALUES ('954','1408',158,'2023-03-02T16:00:00Z');


