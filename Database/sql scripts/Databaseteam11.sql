-- -----------------------------------------------------

-- Schema mydb1

-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `mydbteam11` DEFAULT CHARACTER SET utf8;

USE `mydbteam11` ;

-----------------------------------------------------


DROP TABLE IF EXISTS returns;

CREATE TABLE IF NOT EXISTS returns(

   return_ID     VARCHAR(7) NOT NULL 

  ,order_ID      VARCHAR(7) NOT NULL

  ,return_reason VARCHAR(37) NOT NULL

  ,product_ID    VARCHAR(9) NOT NULL

  ,refund_amount NUMERIC(6,2) NOT NULL

);

INSERT INTO returns(return_ID,order_ID,return_reason,product_ID,refund_amount) VALUES

('AS99790','I139207','Late Arrival','BadBad007',36)

,('AS99790','I139207','Product Did Not Meet Expectations','TrnTrn001',74.4)

,('AS99790','I139207','Late Arrival','CycCyc012',83.16)

,('AS99790','I139207','Wrong Item Was Ordered','TrnTrn002',75.6)

,('AS99790','I139207','Wrong Item Was Ordered','BadBad009',33)

,('AS86543','I217053','Product Defect','CycCyc012',83.16)

,('AS86543','I217053','Wrong Item Shipped','FooFoo007',124.08)

,('AS86543','I217053','Wrong Product Description Information','TenTen001',63.36)

,('AS12345','I655874','Wrong Size','BktBkt007',43.56)

,('AS12345','I655874','Product Defect','TatTat003',37.8)

,('AS67890','I826174','Product Is No Longer Needed','TrnTrn003',84.48)

,('AS67890','I826174','Product Is No Longer Needed','BktBkt004',36)

,('AS67890','I826174','Wrong Size','BktBkt002',33.6)

,('AS67890','I826174','Unfit Size','CycCyc001',68.64)

,('AS67890','I826174','Wrong Item Shipped','BktBkt004',36)

,('AS54321','I292239','Product Defect','ScdScd001',25.2)

,('AS99791','I739573','Late Arrival','BasBas007',33)

,('AS99791','I739573','Late Arrival','RcyRcy016',19.2)

,('AS99791','I739573','Late Arrival','YogYog003',94.8)

,('AS13579','I869144','The product Was Damaged Upon Arrival','CycCyc019',84)

,('AS13579','I869144','Product Is No Longer Needed','CycCyc017',73.44)

,('AS13579','I869144','Wrong Size','TatTat007',51.48)

,('AS13579','I869144','Wrong Size','CycCyc015',71.28)

,('AS98765','I985478','Product Defect','FooFoo006',111.6)

,('AS98765','I985478','Wrong Item Was Ordered','TrkTrk004',91.2)

,('AS43210','I256691','Unfit Size','BoxBox015',57.6)

,('AS56789','I774221','Unfit Size','CycCyc003',58.32)

,('AS56789','I774221','Wrong Product Description Information','BasBas004',26.4)

,('AS56789','I774221','Gift Purchase Was Incorrect.','SwmSwm003',32.4)

,('AS23456','I129886','The product Was Damaged Upon Arrival','BasBas008',34.32);
--------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS product;

CREATE TABLE IF NOT EXISTS `mydbteam11`. product(

   category   VARCHAR(13) NOT NULL 

  ,product    VARCHAR(39) NOT NULL

  ,size       VARCHAR(8) NOT NULL

  ,product_ID VARCHAR(9)  NOT NULL PRIMARY KEY

  ,price      NUMERIC(6,2) NOT NULL

);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Badminton','Badminton Clothing','L','BadBad001',25);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Badminton','Badminton Clothing','M','BadBad002',20);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Badminton','Badminton Clothing','S','BadBad003',15);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Badminton','Badminton Shoes','UK 10','BadBad004',26);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Badminton','Badminton Shoes','UK 11','BadBad005',27);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Badminton','Badminton Shoes','UK 12','BadBad006',30);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Badminton','Badminton Shoes','UK 4','BadBad007',36);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Badminton','Badminton Shoes','UK 5','BadBad008',35);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Badminton','Badminton Shoes','UK 6','BadBad009',33);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Badminton','Badminton Shoes','UK 7','BadBad010',20.25);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Badminton','Badminton Shoes','UK 8','BadBad011',26.12);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Badminton','Badminton Shoes','UK 9','BadBad012',19.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Badminton','Badminton Clothing','XL','BadBad013',22.44);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Badminton','Badminton Clothing','XXL','BadBad014',23.76);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Baseball','Baseball Clothing','L','BasBas001',25.08);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Baseball','Baseball Clothing','M','BasBas002',24);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Baseball','Baseball Clothing','S','BasBas003',22.68);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Baseball','Baseball Bats','Standard','BasBas004',26.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Baseball','Baseballs','Standard','BasBas005',27.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Baseball','Baseball Gloves and Mitts','Standard','BasBas006',28.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Baseball','Baseball Clothing','XL','BasBas007',33);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Baseball','Baseball Clothing','XXL','BasBas008',34.32);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Basketball','Basketball Clothing','L','BktBkt001',35.64);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Basketball','Basketball Clothing','M','BktBkt002',33.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Basketball','Basketball Clothing','S','BktBkt003',31.32);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Basketball','Basketballs','Standard','BktBkt004',36);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Basketball','Basketball Footwear','Standard','BktBkt005',37.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Basketball','Basketball Clothing','XL','BktBkt006',42.24);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Basketball','Basketball Clothing','XXL','BktBkt007',43.56);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Boxing Clothing','L','BoxBox001',44.88);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Boxing Clothing','M','BoxBox002',42);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Boxing Clothing','S','BoxBox003',38.88);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Boxing Gloves','Standard','BoxBox004',44.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Boxing Guards and Headgear','Standard','BoxBox005',45.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Hand Wraps and Inner Gloves','Standard','BoxBox006',46.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Boxing Nutrition','Standard','BoxBox007',48);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Shoes','UK 10','BoxBox008',54.12);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Shoes','UK 11','BoxBox009',55.44);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Shoes','UK 12','BoxBox010',56.76);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Shoes','UK 4','BoxBox011',47.52);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Shoes','UK 5','BoxBox012',48.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Shoes','UK 6','BoxBox013',49.68);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Shoes','UK 7','BoxBox014',56.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Shoes','UK 8','BoxBox015',57.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Shoes','UK 9','BoxBox016',58.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Boxing Clothing','XL','BoxBox017',66);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Boxing','Boxing Clothing','XXL','BoxBox018',67.32);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Cycling Clothing','L','CycCyc001',68.64);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Cycling Clothing','M','CycCyc002',63.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Cycling Clothing','S','CycCyc003',58.32);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Bikes','Standard','CycCyc004',66);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Electric Bikes','Standard','CycCyc005',67.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Bike Wheels, Tyres and Inner Tubes','Standard','CycCyc006',68.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Bike Brakes Parts','Standard','CycCyc007',69.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Bike Drivetrain and Gear Parts','Standard','CycCyc008',70.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Bike Parts','Standard','CycCyc009',72);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Turbo Trainers','Standard','CycCyc010',73.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Bike Insurance','Standard','CycCyc011',74.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Cycling Shoes and Overshoes','UK 10','CycCyc012',83.16);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Cycling Shoes and Overshoes','UK 11','CycCyc013',84.48);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Cycling Shoes and Overshoes','UK 12','CycCyc014',85.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Cycling Shoes and Overshoes','UK 4','CycCyc015',71.28);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Cycling Shoes and Overshoes','UK 5','CycCyc016',72.36);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Cycling Shoes and Overshoes','UK 6','CycCyc017',73.44);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Cycling Shoes and Overshoes','UK 7','CycCyc018',82.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Cycling Shoes and Overshoes','UK 8','CycCyc019',84);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Cycling Shoes and Overshoes','UK 9','CycCyc020',85.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Cycling Clothing','XL','CycCyc021',95.04);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Cycling','Cycling Clothing','XXL','CycCyc022',96.36);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Fitness & Gym','treadmill','Standard','FagFag001',88.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Fitness & Gym','Gym Training Supports','Standard','FagFag002',90);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Fitness & Gym','Proteins & Food Supplements','Standard','FagFag003',91.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Fitness & Gym','Womens Gym Clothes','Standard','FagFag004',92.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Fitness & Gym','Mens Gym Clothes','Standard','FagFag005',93.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Fitness & Gym','Gym Trainers & Shoes','UK 10','FagFag006',104.28);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Fitness & Gym','Gym Trainers & Shoes','UK 11','FagFag007',105.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Fitness & Gym','Gym Trainers & Shoes','UK 12','FagFag008',106.92);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Fitness & Gym','Gym Trainers & Shoes','UK 4','FagFag009',88.56);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Fitness & Gym','Gym Trainers & Shoes','UK 5','FagFag010',89.64);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Fitness & Gym','Gym Trainers & Shoes','UK 6','FagFag011',90.72);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Fitness & Gym','Gym Trainers & Shoes','UK 7','FagFag012',102);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Fitness & Gym','Gym Trainers & Shoes','UK 8','FagFag013',103.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Fitness & Gym','Gym Trainers & Shoes','UK 9','FagFag014',104.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Football','Football Clothing','L','FooFoo001',116.16);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Football','Football Clothing','M','FooFoo002',106.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Football','Football Clothing','S','FooFoo003',97.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Football','Football balls','Standard','FooFoo004',109.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Football','Football Boots','Standard','FooFoo005',110.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Football','Football Kits','Standard','FooFoo006',111.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Football','Football Clothing','XL','FooFoo007',124.08);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Football','Football Clothing','XXL','FooFoo008',125.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Kayaking','Kayaks','Standard','KykKyk001',115.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Kayaking','Kayak Paddles','Standard','KykKyk002',116.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Kayaking','Kayak Wetsuits','Standard','KykKyk003',117.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Kayaking','Gloves','Standard','KykKyk004',118.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Kayaking','Neoprene Boots','Standard','KykKyk005',15);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Cycling Clothing','L','RcyRcy001',15);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Cycling Clothing','M','RcyRcy002',15);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Cycling Clothing','S','RcyRcy003',15);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Bikes','Standard','RcyRcy004',15);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Bike Helmets','Standard','RcyRcy005',15);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Bike Wheels, Tyres and Inner Tubes','Standard','RcyRcy006',15);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Bike Brake Parts','Standard','RcyRcy007',15);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Bike Drivetrain and Gear Parts','Standard','RcyRcy008',15);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Bike Parts','Standard','RcyRcy009',15);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Cycling Shoes','UK 10','RcyRcy010',15);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Cycling Shoes','UK 11','RcyRcy011',15);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Cycling Shoes','UK 12','RcyRcy012',15.84);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Cycling Shoes','UK 4','RcyRcy013',15);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Cycling Shoes','UK 5','RcyRcy014',15.12);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Cycling Shoes','UK 6','RcyRcy015',16.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Cycling Shoes','UK 7','RcyRcy016',19.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Cycling Shoes','UK 8','RcyRcy017',20.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Cycling Shoes','UK 9','RcyRcy018',21.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Cycling Clothing','XL','RcyRcy019',25.08);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Road Cycling','Road Cycling Clothing','XXL','RcyRcy020',26.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Scuba Diving','Scuba Diving Fins, Masks and Snorkels','Standard','ScdScd001',25.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Scuba Diving','Scuba Diving Wetsuits','Standard','ScdScd002',26.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Scuba Diving','Neoprene Boots','Standard','ScdScd003',27.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Scuba Diving','Neoprene Gloves','Standard','ScdScd004',28.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Swimming','Swimming Goggles','Standard','SwmSwm001',30);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Swimming','Womens Swimwear & Beachwear','Standard','SwmSwm002',31.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Swimming','Mens Swimwear & Beachwear','Standard','SwmSwm003',32.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Swimming','Girls Swimwear & Beachwear','Standard','SwmSwm004',33.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Swimming','Boys Swimwear & Beachwear','Standard','SwmSwm005',34.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Swimming','Baby & Toddler Swimwear','Standard','SwmSwm006',36);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Swimming','Swimming Aids','Standard','SwmSwm007',37.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Swimming','Paddling Pools','Standard','SwmSwm008',38.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Table Tennis','Table Tennis Clothing','L','TatTat001',43.56);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Table Tennis','Table Tennis Clothing','M','TatTat002',40.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Table Tennis','Table Tennis Clothing','S','TatTat003',37.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Table Tennis','Table Tennis Tables','Standard','TatTat004',43.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Table Tennis','Table Tennis Shoes','UK 10','TatTat005',48.84);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Table Tennis','Table Tennis Shoes','UK 11','TatTat006',50.16);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Table Tennis','Table Tennis Shoes','UK 12','TatTat007',51.48);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Table Tennis','Table Tennis Shoes','UK 4','TatTat008',43.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Table Tennis','Table Tennis Shoes','UK 5','TatTat009',44.28);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Table Tennis','Table Tennis Shoes','UK 6','TatTat010',45.36);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Table Tennis','Table Tennis Shoes','UK 7','TatTat011',51.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Table Tennis','Table Tennis Shoes','UK 8','TatTat012',52.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Table Tennis','Table Tennis Shoes','UK 9','TatTat013',54);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Table Tennis','Table Tennis Clothing','XL','TatTat014',60.72);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Table Tennis','Table Tennis Clothing','XXL','TatTat015',62.04);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Tennis','Tennis Clothing','L','TenTen001',63.36);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Tennis','Tennis Clothing','M','TenTen002',58.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Tennis','Tennis Clothing','S','TenTen003',54);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Tennis','Tennis Shoes','UK 10','TenTen004',67.32);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Tennis','Tennis Shoes','UK 11','TenTen005',68.64);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Tennis','Tennis Shoes','UK 12','TenTen006',69.96);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Tennis','Tennis Shoes','UK 4','TenTen007',58.32);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Tennis','Tennis Shoes','UK 5','TenTen008',59.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Tennis','Tennis Shoes','UK 6','TenTen009',60.48);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Tennis','Tennis Shoes','UK 7','TenTen010',68.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Tennis','Tennis Shoes','UK 8','TenTen011',69.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Tennis','Tennis Shoes','UK 9','TenTen012',70.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Tennis','Tennis Clothing','XL','TenTen013',79.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Tennis','Tennis Clothing','XXL','TenTen014',80.52);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Trail Running','Trail Running Clothes','Standard','TrnTrn001',74.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Trail Running','Trail Running Backpacks & Belts','Standard','TrnTrn002',75.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Trail Running','Trail Running Shoes','UK 10','TrnTrn003',84.48);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Trail Running','Trail Running Shoes','UK 11','TrnTrn004',85.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Trail Running','Trail Running Shoes','UK 12','TrnTrn005',87.12);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Trail Running','Trail Running Shoes','UK 4','TrnTrn006',72.36);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Trail Running','Trail Running Shoes','UK 5','TrnTrn007',73.44);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Trail Running','Trail Running Shoes','UK 6','TrnTrn008',74.52);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Trail Running','Trail Running Shoes','UK 7','TrnTrn009',84);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Trail Running','Trail Running Shoes','UK 8','TrnTrn010',85.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Trail Running','Trail Running Shoes','UK 9','TrnTrn011',86.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Trekking','Trekking Clothes','Standard','TrkTrk001',87.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Trekking','Trekking Boots','Standard','TrkTrk002',88.8);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Trekking','Trekking Bags and Backpacks','Standard','TrkTrk003',90);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Trekking','Trekking Poles','Standard','TrkTrk004',91.2);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Yoga','Yoga Clothes','Standard','YogYog001',92.4);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Yoga','Maternity Yoga Clothes','Standard','YogYog002',93.6);

INSERT INTO product(category,product,size,product_ID,price) VALUES ('Yoga','Yoga mats','Standard','YogYog003',94.8);

DROP TABLE IF EXISTS customer;

CREATE TABLE IF NOT EXISTS customer(

   customer_ID VARCHAR(7) NOT NULL PRIMARY KEY

  ,firstName   VARCHAR(9) NOT NULL

  ,lastName    VARCHAR(10) NOT NULL

  ,DOB         VARCHAR(19) NOT NULL

  ,phoneNumber VARCHAR(12) NOT NULL

  ,email       VARCHAR(31) NOT NULL

  ,username    VARCHAR(12) NOT NULL

  ,password_   VARCHAR(10) NOT NULL

  ,paymentInfo VARCHAR(19) NOT NULL

  ,address_ID  INTEGER  NOT NULL

);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C241288','JON','YANG','1966-04-08 00:00:00','020 34029678','jon24@gmail.com','JONY88','zL\\{iW:.}b','8155 9121 4825 2234',1);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C111565','EUGENE','HUANG','1965-05-14 00:00:00','020 94981833','eugene10@gmail.com','EUGENEH65','Q(y1+@lYDH','8156 9121 4825 2234',2);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C266599','RUBEN','TORRES','1965-08-12 00:00:00','020 81226991','ruben35@gmail.com','RUBENT99','-]z/g6.\"3a','8157 9121 4825 2234',3);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C988172','CHRISTY','ZHU','1968-02-15 00:00:00','020 88604036','christy12@gmail.com','CHRISTYZ72','qW)@DJi%]F','8158 9121 4825 2234',4);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C189076','ELIZABETH','JOHNSON','1968-08-08 00:00:00','020 80323121','elizabeth5@gmail.com','ELIZABETHJ76','JwUP?Xb-6~','8159 9121 4825 2234',5);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C657758','JULIO','RUIZ','1965-08-05 00:00:00','020 12861101','julio1@gmail.com','JULIOR58','BFlIgU7K9O','8160 9121 4825 2234',6);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C151197','MARCO','MEHTA','1964-05-09 00:00:00','020 88473683','marco14@gmail.com','MARCOM97','K7sC~j(d]E','8161 9121 4825 2234',7);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C176086','ROBIN','VERHOFF','1964-07-07 00:00:00','020 56066787','rob4@gmail.com','ROBINV86','\\f\']^\"nPZ%','8162 9121 4825 2234',8);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C159642','SHANNON','CARLSON','1964-04-01 00:00:00','020 20844240','shannon38@gmail.com','SHANNONC42','`g5dYafL?2','8163 9121 4825 2234',9);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C283361','JACQUELYN','SUAREZ','1964-02-06 00:00:00','020 07328525','jacquelyn20@gmail.com','JACQUELYNS61',':4wJBq7&=Y','8164 9121 4825 2234',10);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C240286','CURTIS','LU','1963-11-04 00:00:00','020 47052251','curtis9@gmail.com','CURTISL86','UA-PO^mK-6','8165 9121 4825 2234',11);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C191708','LAUREN','WALKER','1968-01-18 00:00:00','020 64574488','lauren41@gmail.com','LAURENW08','xbA\"|kI$Ra','8166 9121 4825 2234',12);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C225330','IAN','JENKINS','1968-08-06 00:00:00','020 95520967','ian47@gmail.com','IANJ30','1CTE_Ao7;z','8167 9121 4825 2234',13);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C312861','SYDNEY','BENNETT','1968-05-09 00:00:00','020 68122298','sydney23@gmail.com','SYDNEYB61','.)@o/$C??','8168 9121 4825 2234',14);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C555402','CHLOE','YOUNG','1979-02-27 00:00:00','020 59763804','chloe23@gmail.com','CHLOEY02','#;VmyuyThS','8169 9121 4825 2234',15);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C362288','WYATT','HILL','1979-04-28 00:00:00','020 98752604','wyatt32@gmail.com','WYATTH88','}x:Ah<AMqG','8170 9121 4825 2234',16);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C300786','SHANNON','WANG','1944-06-26 00:00:00','020 03586394','shannon1@gmail.com','SHANNONW86','.PW:*K`:w&','8171 9121 4825 2234',17);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C330667','CLARENCE','RAI','1944-10-09 00:00:00','020 97015441','clarence32@gmail.com','CLARENCER67','~xJMOES<Mz','8172 9121 4825 2234',18);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C218149','LUKE','LAL','1978-03-07 00:00:00','020 93378245','luke18@gmail.com','LUKEL49','^UJkzOwMFD','8173 9121 4825 2234',19);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C196845','JORDAN','KING','1978-09-20 00:00:00','020 81483635','jordan73@gmail.com','JORDANK45','L1,6:N>,lZ','8174 9121 4825 2234',20);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C220180','DESTINY','WILSON','1978-09-03 00:00:00','020 79284815','destiny7@gmail.com','DESTINYW80','iQ\"RVe4?&X','8175 9121 4825 2234',21);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C125696','ETHAN','ZHANG','1978-10-12 00:00:00','020 99820598','ethan20@gmail.com','ETHANZ96','HU7-z\'UuJ{','8176 9121 4825 2234',22);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C322947','SETH','EDWARDS','1978-10-11 00:00:00','020 31399933','seth46@gmail.com','SETHE47','/9i7S-q$}8','8177 9121 4825 2234',23);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C313348','RUSSELL','XIE','1978-09-17 00:00:00','020 71368738','russell7@gmail.com','RUSSELLX48','M^@}Z\"~L4*','8178 9121 4825 2234',24);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C204553','ALEJANDRO','BECK','1945-12-23 00:00:00','020 78179258','alejandro45@gmail.com','ALEJANDROB53','2AID4MlfIZ','8179 9121 4825 2234',25);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C285161','HAROLD','SAI','1946-04-03 00:00:00','020 44925404','harold3@gmail.com','HAROLDS61','CY#g;j(xQ&','8180 9121 4825 2234',26);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C289625','JESSIE','ZHAO','1946-12-07 00:00:00','020 83599027','jessie16@gmail.com','JESSIEZ25','D=9P28THv,','8181 9121 4825 2234',27);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C192344','JILL','JIMENEZ','1946-04-11 00:00:00','020 43059472','jill13@gmail.com','JILLJ44','wa6Ws\'l>08','8182 9121 4825 2234',28);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C447138','JIMMY','MORENO','1946-12-21 00:00:00','020 76015998','jimmy9@gmail.com','JIMMYM38','sf`*hdkV(]','8183 9121 4825 2234',29);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C251229','BETHANY','YUAN','1947-02-22 00:00:00','020 50071011','bethany10@gmail.com','BETHANYY29','z/xnE,NPG}','8184 9121 4825 2234',30);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C159164','THERESA','RAMOS','1947-08-22 00:00:00','020 80580578','theresa13@gmail.com','THERESAR64','S(!nZOP:8`','8185 9121 4825 2234',31);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C501658','DENISE','STONE','1947-06-11 00:00:00','020 84903028','denise10@gmail.com','DENISES58','%AgpSIm67^','8186 9121 4825 2234',32);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C176727','JAIME','NATH','1947-09-23 00:00:00','020 02835848','jaime41@gmail.com','JAIMEN27','o/qsh*5Mzr','8187 9121 4825 2234',33);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C232624','EBONY','GONZALEZ','1947-06-19 00:00:00','020 45634646','ebony19@gmail.com','EBONYG24','.G3ih%_1P)','8188 9121 4825 2234',34);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C164092','WENDY','DOMINGUEZ','1948-02-24 00:00:00','020 26912933','wendy12@gmail.com','WENDYD92','O($QLqYV]3','8189 9121 4825 2234',35);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C276887','JENNIFER','RUSSELL','1978-12-18 00:00:00','020 38360818','jennifer93@gmail.com','JENNIFERR87','jp{eq16Ik^','8190 9121 4825 2234',36);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C245456','CHLOE','GARCIA','1977-11-27 00:00:00','020 14634645','chloe27@gmail.com','CHLOEG56','J}MP)/nl3O','8191 9121 4825 2234',37);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C450287','DIANA','HERNANDEZ','1948-03-23 00:00:00','020 00478681','diana2@gmail.com','DIANAH87','U6<u0%?oM!','8192 9121 4825 2234',38);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C204279','MARC','MARTIN','1948-12-17 00:00:00','020 50313635','marc3@gmail.com','MARCM79','UM3!P#Rp|O','8193 9121 4825 2234',39);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C452806','JESSE','MURPHY','1977-08-01 00:00:00','020 70817581','jesse15@gmail.com','JESSEM06','5C9QPZ\\vLp','8194 9121 4825 2234',40);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C716788','AMANDA','CARTER','1977-10-16 00:00:00','020 69743013','amanda53@gmail.com','AMANDAC88','#/BGj_ybeH','8195 9121 4825 2234',41);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C155059','MEGAN','SANCHEZ','1977-06-13 00:00:00','020 66032909','megan28@gmail.com','MEGANS59','r|=oVgnM\\S','8196 9121 4825 2234',42);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C306662','NATHAN','SIMMONS','1976-02-24 00:00:00','020 95231896','nathan11@gmail.com','NATHANS62','nEsPvM{N`H','8197 9121 4825 2234',43);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C607615','ADAM','FLORES','1949-05-24 00:00:00','020 53811642','adam10@gmail.com','ADAMF15','P6tLemn','8198 9121 4825 2234',44);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C120164','LEONARD','NARA','1950-05-19 00:00:00','020 92869562','leonard18@gmail.com','LEONARDN64','#/OTOJz7Rf','8199 9121 4825 2234',45);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C134449','CHRISTINE','YUAN','1950-03-22 00:00:00','020 07746455','christine4@gmail.com','CHRISTINEY49','S}4B,cCLR0','8200 9121 4825 2234',46);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C317818','JACLYN','LU','1950-02-27 00:00:00','020 72507435','jaclyn12@gmail.com','JACLYNL18',')wdfac)\"QD','8201 9121 4825 2234',47);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C241642','JEREMY','POWELL','1950-11-22 00:00:00','020 09398332','jeremy26@gmail.com','JEREMYP42','_f6GT#]~]|','8202 9121 4825 2234',48);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C126436','CAROL','RAI','1980-07-18 00:00:00','020 32435656','carol8@gmail.com','CAROLR36','\\N6\'h=Sx7/','8203 9121 4825 2234',49);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C653385','ALAN','ZHENG','1951-09-07 00:00:00','020 30802215','alan23@gmail.com','ALANZ85','-6mLH(Qex6','8204 9121 4825 2234',50);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C227070','DANIEL','JOHNSON','1951-08-04 00:00:00','020 19815940','daniel18@gmail.com','DANIELJ70','l)8jYhIADo','8205 9121 4825 2234',51);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C317478','HEIDI','LOPEZ','1951-08-07 00:00:00','020 15037534','heidi19@gmail.com','HEIDIL78','J6_!F4PBW~','8206 9121 4825 2234',52);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C237330','ANA','PRICE','1980-08-20 00:00:00','020 81958826','ana0@gmail.com','ANAP30','I/[<-IXprl','8207 9121 4825 2234',53);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C626042','DEANNA','MUNOZ','1952-03-10 00:00:00','020 12615180','deanna33@gmail.com','DEANNAM42','MFVGkk]{_)','8208 9121 4825 2234',54);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C133687','GILBERT','RAJE','1952-03-05 00:00:00','020 51853672','gilbert35@gmail.com','GILBERTR87','*W~;O~jDaB','8209 9121 4825 2234',55);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C841663','MICHELE','NATH','1953-04-03 00:00:00','020 10703849','michele19@gmail.com','MICHELEN63','F~Gm&,Y0`!','8210 9121 4825 2234',56);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C213742','CARL','ANDERSEN','1953-10-12 00:00:00','020 64187163','carl12@gmail.com','CARLA42','Wg)~/J6|CI','8211 9121 4825 2234',57);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C962515','MARC','DIAZ','1954-04-27 00:00:00','020 86812266','marc6@gmail.com','MARCD15','~lqQS3nbFd','8212 9121 4825 2234',58);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C112279','ASHLEE','ANDERSEN','1954-04-01 00:00:00','020 60417931','ashlee19@gmail.com','ASHLEEA79','8dxSq2iPP-','8213 9121 4825 2234',59);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C158837','JON','ZHOU','1954-03-17 00:00:00','020 84360066','jon28@gmail.com','JONZ37','zL0OwLIR{g','8214 9121 4825 2234',60);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C336576','TODD','GAO','1954-02-27 00:00:00','020 50359151','todd14@gmail.com','TODDG76','QKgVSjj*9$','8215 9121 4825 2234',61);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C716161','NOAH','POWELL','1975-09-02 00:00:00','020 44335669','noah5@gmail.com','NOAHP61','8ji;Z\'&/X]','8216 9121 4825 2234',62);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C439382','ANGELA','MURPHY','1975-04-07 00:00:00','020 55220355','angela41@gmail.com','ANGELAM82','J^V4#iQfnj','8217 9121 4825 2234',63);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C123427','CHASE','REED','1975-12-07 00:00:00','020 42403601','chase21@gmail.com','CHASER27','izWzi#]a:h','8218 9121 4825 2234',64);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C224743','JESSICA','HENDERSON','1973-10-09 00:00:00','020 34445817','jessica29@gmail.com','JESSICAH43','k!Gk%a[4(o','8219 9121 4825 2234',65);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C119549','GRACE','BUTLER','1973-11-27 00:00:00','020 13245884','grace62@gmail.com','GRACEB49','k)$c69b9%5','8220 9121 4825 2234',66);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C187266','CALEB','CARTER','1976-09-25 00:00:00','020 46824928','caleb40@gmail.com','CALEBC66',';tDSttGo?3','8221 9121 4825 2234',67);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C173084','TIFFANY','LIANG','1955-09-23 00:00:00','020 77925232','tiffany17@gmail.com','TIFFANYL84',',_`1L\"cQgu','8222 9121 4825 2234',68);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C126956','CAROLYN','NAVARRO','1955-09-21 00:00:00','020 94215927','carolyn30@gmail.com','CAROLYNN56','k&;;^X76KW','8223 9121 4825 2234',69);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C236859','WILLIE','RAJI','1955-04-05 00:00:00','020 13233212','willie40@gmail.com','WILLIER59','[qKs*f-C&9','8224 9121 4825 2234',70);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C309926','LINDA','SERRANO','1955-06-26 00:00:00','020 78263561','linda31@gmail.com','LINDAS26','8M1vY6dZ>/','8225 9121 4825 2234',71);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C493252','CASEY','LUO','1955-02-06 00:00:00','020 90503763','casey6@gmail.com','CASEYL52','H}\'F3iNkM&','8226 9121 4825 2234',72);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C109871','AMY','YE','1956-08-14 00:00:00','020 16596120','amy16@gmail.com','AMYY71','hfu73','8227 9121 4825 2234',73);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C136117','LEVI','ARUN','1956-08-28 00:00:00','020 03021571','levi6@gmail.com','LEVIA17','3o&^fxIxWW','8228 9121 4825 2234',74);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C258404','FELICIA','JIMENEZ','1957-11-16 00:00:00','020 78822077','felicia4@gmail.com','FELICIAJ04','g\\XC)\\=))3','8229 9121 4825 2234',75);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C169749','BLAKE','ANDERSON','1957-07-13 00:00:00','020 45497666','blake9@gmail.com','BLAKEA49','Am7v5kL=n[','8230 9121 4825 2234',76);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C199947','LEAH','YE','1957-09-19 00:00:00','020 94464112','leah7@gmail.com','LEAHY47','PY=<y`%3G?','8231 9121 4825 2234',77);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C135790','GINA','MARTIN','1974-01-10 00:00:00','020 69707650','gina1@gmail.com','GINAM90',']jvBB;FHF.','8232 9121 4825 2234',78);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C606418','DONALD','GONZALEZ','1959-03-11 00:00:00','020 63121270','donald20@gmail.com','DONALDG18','.1A.3#9iNz','8233 9121 4825 2234',79);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C111611','DAMIEN','CHANDER','1959-07-17 00:00:00','020 23645440','damien32@gmail.com','DAMIENC11','43M,tale:$','8234 9121 4825 2234',80);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C679476','SAVANNAH','BAKER','1966-07-24 00:00:00','020 17462922','savannah39@gmail.com','SAVANNAHB76',':4z::&9#Iu','8235 9121 4825 2234',81);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C542025','ANGELA','BUTLER','1966-08-04 00:00:00','020 97171723','angela17@gmail.com','ANGELAB25','l{4no<#UeA','8236 9121 4825 2234',82);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C168491','ALYSSA','COX','1966-03-15 00:00:00','020 64229757','alyssa37@gmail.com','ALYSSAC91','B?Y7//eG>H','8237 9121 4825 2234',83);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C169650','LUCAS','PHILLIPS','1957-09-12 00:00:00','020 07103317','lucas7@gmail.com','LUCASP50','>6)T-2~m]v','8238 9121 4825 2234',84);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C158160','EMILY','JOHNSON','1957-07-19 00:00:00','020 15854283','emily1@gmail.com','EMILYJ60','(/~iZA;^wy','8239 9121 4825 2234',85);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C552345','RYAN','BROWN','1957-12-23 00:00:00','020 54270953','ryan43@gmail.com','RYANB45','hrfuhy8r','8240 9121 4825 2234',86);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C218383','TAMARA','LIANG','1957-10-03 00:00:00','020 76562267','tamara6@gmail.com','TAMARAL83','^aZn{C#i%>','8241 9121 4825 2234',87);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C309438','ABIGAIL','PRICE','1957-02-05 00:00:00','020 73118217','abigail25@gmail.com','ABIGAILP38','<o?s+e:F+,','8242 9121 4825 2234',88);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C253905','TREVOR','BRYANT','1957-12-17 00:00:00','020 14429746','trevor18@gmail.com','TREVORB05','`2*1/Uh!ga','8243 9121 4825 2234',89);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C992677','DALTON','PEREZ','1957-04-04 00:00:00','020 97036870','dalton37@gmail.com','DALTONP77','J?Ob4i:hYF','8244 9121 4825 2234',90);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C584700','CHERYL','DIAZ','1967-05-06 00:00:00','020 04473072','cheryl4@gmail.com','CHERYLD00','FcyT9Q2U2G','8245 9121 4825 2234',91);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C157070','AIMEE','HE','1967-09-10 00:00:00','020 95583517','aimee13@gmail.com','AIMEEH70','{,/OayZ?Zi','8246 9121 4825 2234',92);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C177975','CEDRIC','MA','1962-04-01 00:00:00','020 15803857','cedric15@gmail.com','CEDRICM75','>oMvpc&@b/','8247 9121 4825 2234',93);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C830576','CHAD','KUMAR','1962-09-01 00:00:00','020 90136755','chad9@gmail.com','CHADK76','>2\'*s)s*q2','8248 9121 4825 2234',94);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C807389','ANDRÉS','ANAND','1962-08-10 00:00:00','020 54099998','andrés18@gmail.com','ANDRÉSA89',')In#Fs?i|(','8249 9121 4825 2234',95);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C277842','EDWIN','NARA','1961-10-27 00:00:00','020 73045226','edwin39@gmail.com','EDWINN42',':(G<U0Tf$%','8250 9121 4825 2234',96);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C183011','MALLORY','RUBIO','1961-05-01 00:00:00','020 58203281','mallory7@gmail.com','MALLORYR11','3D,&O8xOkS','8251 9121 4825 2234',97);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C567813','ADAM','ROSS','1961-03-08 00:00:00','020 29738238','adam2@gmail.com','ADAMR13','y{^pYJ3/fK','8252 9121 4825 2234',98);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C282974','LATASHA','NAVARRO','1960-09-15 00:00:00','020 37280150','latasha10@gmail.com','LATASHAN74','5sB0x\\{t~U','8253 9121 4825 2234',99);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C181972','ABBY','SAI','1965-05-08 00:00:00','020 76325446','abby4@gmail.com','ABBYS72','*k(GQ!,x}R','8254 9121 4825 2234',100);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C189493','JULIA','NELSON','1965-04-21 00:00:00','020 63516042','julia7@gmail.com','JULIAN93','l:-w,;?7|8','8255 9121 4825 2234',101);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C242748','CASSIE','CHANDE','1964-10-17 00:00:00','020 90802819','cassie13@gmail.com','CASSIEC48','YI6;\\XS!ZV','8256 9121 4825 2234',102);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C324683','EDGAR','SARA','1964-03-11 00:00:00','020 47653074','edgar11@gmail.com','EDGARS83','~vHJA7NdV7','8257 9121 4825 2234',103);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C307921','CANDACE','FERNANDEZ','1964-12-28 00:00:00','020 76833553','candace15@gmail.com','CANDACEF21',':;(P^V#w\\b','8258 9121 4825 2234',104);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C152549','JESSIE','LIU','1964-09-11 00:00:00','020 08056345','jessie9@gmail.com','JESSIEL49','aP}x`uji@v','8259 9121 4825 2234',105);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C111832','BIANCA','LIN','1959-09-09 00:00:00','020 97699800','bianca7@gmail.com','BIANCAL32','I%wuDFkF7@','8260 9121 4825 2234',106);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C204174','KARI','ALVAREZ','1963-07-14 00:00:00','020 90678094','kari25@gmail.com','KARIA74','w\'L$hh6H^M','8261 9121 4825 2234',107);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C279370','RUBEN','KAPOOR','1963-11-05 00:00:00','020 29519085','ruben1@gmail.com','RUBENK70','#]2,_&6?jZ','8262 9121 4825 2234',108);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C907582','CURTIS','YANG','1962-06-06 00:00:00','020 49171609','curtis5@gmail.com','CURTISY82','1;pWs9w}%r','8263 9121 4825 2234',109);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C166635','MEREDITH','GUTIERREZ','1962-02-23 00:00:00','020 66330967','meredith34@gmail.com','MEREDITHG35','[/hBk3,NSb','8264 9121 4825 2234',110);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C276043','CRYSTAL','WANG','1962-09-09 00:00:00','020 07324452','crystal3@gmail.com','CRYSTALW43','rd_/}MKZt]','8265 9121 4825 2234',111);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C282643','MICHEAL','BLANCO','1962-02-21 00:00:00','020 94726659','micheal11@gmail.com','MICHEALB43','hHByyN5f?`','8266 9121 4825 2234',112);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C820515','LESLIE','MORENO','1962-05-28 00:00:00','020 98516651','leslie7@gmail.com','LESLIEM15','\\J=j=`~)ew','8267 9121 4825 2234',113);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C331761','ALVIN','CAI','1962-02-12 00:00:00','020 17075360','alvin20@gmail.com','ALVINC61','#$fOv6_k{M','8268 9121 4825 2234',114);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C326893','CLINTON','CARLSON','1962-10-07 00:00:00','020 16883047','clinton14@gmail.com','CLINTONC93','huwehfeh','8269 9121 4825 2234',115);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C306395','APRIL','DENG','1961-02-21 00:00:00','020 77370595','april1@gmail.com','APRILD95','}H9M?[3Q*4','8270 9121 4825 2234',116);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C885344','ALVIN','ZENG','1957-07-03 00:00:00','020 20456845','alvin21@gmail.com','ALVINZ44','m[4O8/\'G8G','8271 9121 4825 2234',117);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C112750','EVAN','JAMES','1935-04-10 00:00:00','020 44432976','evan8@gmail.com','EVANJ50','GH!GMpDT\"7','8272 9121 4825 2234',118);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C274870','ORLANDO','SUAREZ','1960-11-18 00:00:00','020 29241059','orlando19@gmail.com','ORLANDOS70','X>rl/zbcYp','8273 9121 4825 2234',119);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C199864','BYRON','VAZQUEZ','1960-04-02 00:00:00','020 26519537','byron9@gmail.com','BYRONV64','8@/W>hH?~7','8274 9121 4825 2234',120);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C997380','PHILIP','ALVAREZ','1960-06-20 00:00:00','020 17450078','philip4@gmail.com','PHILIPA80','Nos3MJht4w','8275 9121 4825 2234',121);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C132002','ROSS','JORDAN','1957-07-27 00:00:00','020 40267407','ross1@gmail.com','ROSSJ02','7P,K)N3.GG','8276 9121 4825 2234',122);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C255058','DANA','NAVARRO','1956-04-08 00:00:00','020 39256634','dana2@gmail.com','DANAN58','WwxgJIHhmn','8277 9121 4825 2234',123);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C271799','SHAUN','CARSON','1949-04-07 00:00:00','020 42880133','shaun16@gmail.com','SHAUNC99','(|zW|tH^#,','8278 9121 4825 2234',124);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C765620','JAN','EDWARDS','1975-10-21 00:00:00','020 99233763','jan11@gmail.com','JANE20','nS~\'Waf\"zr','8279 9121 4825 2234',125);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C891545','SAMANTHA','LONG','1975-12-05 00:00:00','020 53571132','samantha35@gmail.com','SAMANTHAL45','G?UsaKgy?5','8280 9121 4825 2234',126);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C519513','JULIA','WRIGHT','1975-08-05 00:00:00','020 47730512','julia17@gmail.com','JULIAW13','vs!A:E<+=(','8281 9121 4825 2234',127);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C125624','CAROLINE','RUSSELL','1980-01-06 00:00:00','020 59085061','caroline21@gmail.com','CAROLINER24','P\"JC<w\'nv?','8282 9121 4825 2234',128);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C658980','AMANDA','RIVERA','1980-03-12 00:00:00','020 19875584','amanda7@gmail.com','AMANDAR80','A+faz,SMIF','8283 9121 4825 2234',129);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C319231','MELISSA','RICHARDSON','1980-10-26 00:00:00','020 49917838','melissa31@gmail.com','MELISSAR31','Xeqf(B\'j+','8284 9121 4825 2234',130);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C150594','ANGELA','GRIFFIN','1980-09-08 00:00:00','020 43098163','angela23@gmail.com','ANGELAG94','S9&\\4ui`;h','8285 9121 4825 2234',131);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C846730','LARRY','TOWNSEND','1946-02-26 00:00:00','020 67100863','larry14@gmail.com','LARRYT30','<xovcm/j\\s','8286 9121 4825 2234',132);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C249877','MARCUS','HARRIS','1979-11-03 00:00:00','020 64956573','marcus14@gmail.com','MARCUSH77','K^h)eR[D9p','8287 9121 4825 2234',133);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C200826','BRIANNA','MORGAN','1978-10-26 00:00:00','020 09820648','brianna30@gmail.com','BRIANNAM26','gbU<PwLOiG','8288 9121 4825 2234',134);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C263874','JASMINE','TAYLOR','1978-07-20 00:00:00','020 25012589','jasmine7@gmail.com','JASMINET74','2BJ}mdGeJ!','8289 9121 4825 2234',135);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C663463','LAUREN','DAVIS','1978-09-15 00:00:00','020 04545732','lauren23@gmail.com','LAUREND63','<C\\i8$2oq9','8290 9121 4825 2234',136);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C134370','TANYA','MORENO','1938-11-09 00:00:00','020 12679439','tanya2@gmail.com','TANYAM70','0L0ywJwP:l','8291 9121 4825 2234',137);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C310642','JAVIER','ALVAREZ','1977-02-11 00:00:00','020 15956620','javier1@gmail.com','JAVIERA42','`^+1ROib24','8292 9121 4825 2234',138);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C651699','NICOLE','RAMIREZ','1977-06-21 00:00:00','020 44611488','nicole42@gmail.com','NICOLER99','#5zW+oRkQ!','8293 9121 4825 2234',139);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C989693','EDUARDO','PATTERSON','1977-08-14 00:00:00','020 53065002','eduardo55@gmail.com','EDUARDOP93','N)}$JA9M7=','8294 9121 4825 2234',140);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C123581','JONATHAN','HENDERSON','1977-02-04 00:00:00','020 74240497','jonathan4@gmail.com','JONATHANH81','dr1vX9#SX(','8295 9121 4825 2234',141);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C192446','EDWARD','HERNANDEZ','1979-09-09 00:00:00','020 73251471','edward48@gmail.com','EDWARDH46','Dgk/eaOVB)','8296 9121 4825 2234',142);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C143343','JASMINE','COLEMAN','1979-12-08 00:00:00','020 49010422','jasmine46@gmail.com','JASMINEC43','62Wdsk/2g[','8297 9121 4825 2234',143);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C223343','KARLA','GOEL','1939-08-26 00:00:00','020 44642108','karla20@gmail.com','KARLAG43','Pp/@,F31P)','8298 9121 4825 2234',144);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C309082','ERNEST','WU','1939-02-05 00:00:00','020 10456482','ernest6@gmail.com','ERNESTW82','/h(%M8+x2v','8299 9121 4825 2234',145);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C236365','ROSS','VAZQUEZ','1941-08-16 00:00:00','020 76812806','ross32@gmail.com','ROSSV65','8)qj9<1gkr','8300 9121 4825 2234',146);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C178734','THEODORE','GILL','1941-04-20 00:00:00','020 25393238','theodore14@gmail.com','THEODOREG34','9PO,O}2\"zE','8301 9121 4825 2234',147);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C223010','RUSSELL','SHEN','1941-03-15 00:00:00','020 80512834','russell6@gmail.com','RUSSELLS10','8/1nVL\'|vl','8302 9121 4825 2234',148);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C289933','MELINDA','GILL','1942-02-25 00:00:00','020 15244204','melinda9@gmail.com','MELINDAG33','$t?GJ2d958','8303 9121 4825 2234',149);

INSERT INTO customer(customer_ID,firstName,lastName,DOB,phoneNumber,email,username,password_,paymentInfo,address_ID) VALUES ('C340116','PERTH','PANUCHART','1998-07-08 00:00:00','020 66732924','perthladyboy@aventure-works.com','PERTHP16','&c>JE((ZHE','8304 9121 4825 2234',150);


DROP TABLE IF EXISTS branch;

CREATE TABLE IF NOT EXISTS branch(

   branch_ID   VARCHAR(9) NOT NULL PRIMARY KEY

  ,branch_Name VARCHAR(10) NOT NULL

  ,address     VARCHAR(41) NOT NULL

);

INSERT INTO branch(branch_ID,branch_Name,address) VALUES ('BUGL10001','Glasgow','240 Argyle St, Glasgow G2 8BG, UK');

INSERT INTO branch(branch_ID,branch_Name,address) VALUES ('BUED10002','Edinburgh','3 St Andrew Square, Edinburgh EH2 2AD, UK');

INSERT INTO branch(branch_ID,branch_Name,address) VALUES ('BUMA10003','Manchester','1 Hardman St, Manchester M15 4HX, UK');

INSERT INTO branch(branch_ID,branch_Name,address) VALUES ('BUBI10004','Birmingham','2 Centenary Square, Birmingham B1 2EA, UK');

INSERT INTO branch(branch_ID,branch_Name,address) VALUES ('BULE10005','Leeds','1 City Square, Leeds LS1 9DL, UK');


DROP TABLE IF EXISTS inventory;

CREATE TABLE IF NOT EXISTS inventory(

   inventory_ID       VARCHAR(6) NOT NULL PRIMARY KEY

  ,branch_ID          VARCHAR(9) NOT NULL

  ,receving_Date      VARCHAR(10) NOT NULL

  ,total_InventoryQTY INTEGER  NOT NULL

);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5099','BUGL10001','4/19/2023',208);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6346','BUGL10001','02/01/2023',464);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8033','BUMA10003','4/26/2023',438);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5776','BULE10004','11/04/2023',140);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8452','BULE10005','9/22/2023',5);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7980','BUED10002','3/14/2023',424);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5122','BULE10005','04/08/2023',349);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1736','BUGL10001','05/08/2023',430);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5461','BUMA10003','02/10/2023',283);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2971','BUED10002','4/28/2023',75);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9389','BUBI10004','5/23/2023',309);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2671','BUBI10004','5/15/2023',495);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1606','BUGL10001','4/27/2023',434);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3120','BUMA10003','10/16/2023',220);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7996','BUBI10004','10/27/2023',308);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2731','BUGL10001','11/17/2023',228);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8788','BUGL10001','8/16/2023',362);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4395','BUED10002','4/30/2023',275);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7246','BUMA10003','7/13/2023',374);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9020','BULE10005','5/30/2023',291);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9787','BUBI10004','7/26/2023',52);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6343','BUMA10003','6/25/2023',159);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3304','BUMA10003','08/09/2023',438);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4419','BUMA10003','3/15/2023',315);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2131','BULE10005','11/01/2023',428);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3003','BULE10005','4/25/2023',312);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8644','BULE10005','6/30/2023',275);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2707','BUED10002','1/23/2023',430);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9192','BULE10005','1/25/2023',344);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8528','BUGL10001','06/07/2023',450);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1691','BUED10002','07/03/2023',327);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3547','BUED10002','10/30/2023',491);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3683','BUED10002','9/22/2023',54);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9535','BUED10002','10/24/2023',305);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7995','BUED10002','02/06/2023',95);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7862','BUBI10004','9/16/2023',60);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7176','BUBI10004','02/04/2023',337);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7598','BULE10005','1/30/2023',155);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6985','BUMA10003','4/24/2023',125);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5524','BUMA10003','11/29/2022',164);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1827','BUGL10001','3/14/2023',59);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7834','BULE10005','2/14/2023',434);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4204','BULE10005','03/08/2023',107);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1093','BUED10002','11/01/2023',202);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3467','BUBI10004','5/13/2023',301);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4778','BUED10002','9/28/2023',270);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1404','BUMA10003','12/22/2022',378);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6037','BULE10005','12/10/2022',327);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1375','BUMA10003','10/15/2023',39);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4945','BULE10005','02/11/2023',168);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1497','BUED10002','09/01/2023',137);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8666','BUMA10003','10/26/2023',14);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8373','BUBI10004','7/18/2023',392);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9930','BUBI10004','04/10/2023',209);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5515','BUMA10003','3/18/2023',23);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7729','BUBI10004','10/23/2023',336);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4290','BUBI10004','3/17/2023',474);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2562','BUMA10003','02/11/2023',265);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9652','BULE10005','5/15/2023',228);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4123','BUMA10003','3/19/2023',263);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2838','BULE10005','09/09/2023',210);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7959','BULE10005','7/15/2023',456);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5736','BULE10005','5/23/2023',469);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4466','BUED10002','7/22/2023',474);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5043','BUGL10001','05/03/2023',451);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7029','BUMA10003','02/10/2023',61);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5702','BULE10005','12/16/2022',401);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6638','BULE10005','6/13/2023',57);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8853','BUGL10001','02/09/2023',371);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6534','BUMA10003','06/05/2023',238);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7310','BULE10005','11/03/2023',152);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3987','BUED10002','01/09/2023',281);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5690','BUBI10004','12/04/2022',5);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4292','BUBI10004','02/10/2023',101);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3881','BUED10002','08/06/2023',493);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6801','BUMA10003','2/15/2023',306);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8282','BUBI10004','10/30/2023',344);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9526','BUED10002','04/01/2023',31);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9933','BUMA10003','02/12/2023',55);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9292','BUMA10003','07/05/2023',154);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3463','BUBI10004','2/28/2023',277);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8676','BUGL10001','4/21/2023',354);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9366','BUMA10003','12/23/2022',358);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9797','BULE10005','11/26/2023',186);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8794','BUED10002','9/20/2023',408);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4745','BUED10002','12/06/2022',412);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5876','BULE10005','10/15/2023',30);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4808','BUED10002','3/20/2023',418);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6576','BULE10005','01/10/2023',372);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3173','BUMA10003','08/09/2023',310);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5720','BUED10002','8/29/2023',120);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7874','BUBI10004','12/22/2022',436);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2179','BUBI10004','10/20/2023',343);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9888','BUGL10001','07/01/2023',8);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8288','BUMA10003','07/06/2023',106);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3496','BUED10002','5/14/2023',498);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3757','BUED10002','2/27/2023',138);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8458','BUED10002','12/15/2022',183);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5047','BUED10002','10/16/2023',385);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3051','BULE10005','09/06/2023',340);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7844','BUGL10001','02/04/2023',377);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4310','BUMA10003','8/27/2023',421);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8845','BUGL10001','06/07/2023',210);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2747','BUGL10001','05/11/2023',149);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8828','BULE10005','12/18/2022',374);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4868','BUMA10003','01/03/2023',497);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5723','BUGL10001','10/31/2023',260);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5998','BUMA10003','05/03/2023',127);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5930','BUBI10004','8/15/2023',299);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1604','BUGL10001','9/26/2023',66);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9156','BULE10005','11/12/2023',21);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4686','BUBI10004','8/14/2023',293);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4451','BUMA10003','6/17/2023',325);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4781','BUBI10004','8/26/2023',465);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1100','BUGL10001','11/04/2023',113);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5790','BUBI10004','08/04/2023',432);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7037','BUGL10001','5/21/2023',139);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6627','BUED10002','5/17/2023',238);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9863','BUED10002','1/25/2023',361);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4665','BUGL10001','7/15/2023',479);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4107','BUGL10001','12/16/2022',348);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9429','BUMA10003','8/27/2023',44);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7910','BULE10005','04/04/2023',64);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1021','BUBI10004','09/02/2023',416);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7573','BUMA10003','6/21/2023',405);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2253','BUED10002','07/04/2023',455);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7102','BUGL10001','9/17/2023',266);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9592','BULE10005','09/02/2023',445);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4191','BUMA10003','11/15/2023',92);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9063','BUED10002','1/18/2023',112);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2734','BUBI10004','09/08/2023',420);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7540','BUBI10004','7/31/2023',340);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4418','BUED10002','01/12/2023',333);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9778','BUMA10003','05/09/2023',275);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6046','BUMA10003','4/22/2023',370);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8246','BUBI10004','2/20/2023',331);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4205','BUED10002','2/13/2023',227);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6290','BUGL10001','03/03/2023',226);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5547','BUGL10001','2/17/2023',428);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7282','BUGL10001','2/25/2023',132);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5850','BUMA10003','01/08/2023',397);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2337','BUGL10001','11/06/2023',229);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4547','BUBI10004','4/15/2023',315);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1387','BUBI10004','09/06/2023',386);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6245','BUED10002','7/16/2023',370);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4922','BULE10005','9/28/2023',129);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2221','BUMA10003','07/10/2023',296);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2924','BUGL10001','11/23/2023',25);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8185','BUGL10001','3/17/2023',187);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9901','BULE10005','7/15/2023',293);

DROP TABLE IF EXISTS inventory;

CREATE TABLE IF NOT EXISTS inventory(

   inventory_ID       VARCHAR(6) NOT NULL PRIMARY KEY

  ,branch_ID          VARCHAR(9) NOT NULL

  ,receving_Date      VARCHAR(10) NOT NULL

  ,total_InventoryQTY INTEGER  NOT NULL

);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5099','BUGL10001','4/19/2023',208);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6346','BUGL10001','02/01/2023',464);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8033','BUMA10003','4/26/2023',438);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5776','BULE10004','11/04/2023',140);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8452','BULE10005','9/22/2023',5);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7980','BUED10002','3/14/2023',424);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5122','BULE10005','04/08/2023',349);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1736','BUGL10001','05/08/2023',430);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5461','BUMA10003','02/10/2023',283);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2971','BUED10002','4/28/2023',75);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9389','BUBI10004','5/23/2023',309);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2671','BUBI10004','5/15/2023',495);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1606','BUGL10001','4/27/2023',434);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3120','BUMA10003','10/16/2023',220);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7996','BUBI10004','10/27/2023',308);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2731','BUGL10001','11/17/2023',228);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8788','BUGL10001','8/16/2023',362);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4395','BUED10002','4/30/2023',275);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7246','BUMA10003','7/13/2023',374);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9020','BULE10005','5/30/2023',291);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9787','BUBI10004','7/26/2023',52);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6343','BUMA10003','6/25/2023',159);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3304','BUMA10003','08/09/2023',438);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4419','BUMA10003','3/15/2023',315);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2131','BULE10005','11/01/2023',428);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3003','BULE10005','4/25/2023',312);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8644','BULE10005','6/30/2023',275);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2707','BUED10002','1/23/2023',430);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9192','BULE10005','1/25/2023',344);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8528','BUGL10001','06/07/2023',450);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1691','BUED10002','07/03/2023',327);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3547','BUED10002','10/30/2023',491);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3683','BUED10002','9/22/2023',54);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9535','BUED10002','10/24/2023',305);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7995','BUED10002','02/06/2023',95);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7862','BUBI10004','9/16/2023',60);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7176','BUBI10004','02/04/2023',337);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7598','BULE10005','1/30/2023',155);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6985','BUMA10003','4/24/2023',125);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5524','BUMA10003','11/29/2022',164);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1827','BUGL10001','3/14/2023',59);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7834','BULE10005','2/14/2023',434);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4204','BULE10005','03/08/2023',107);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1093','BUED10002','11/01/2023',202);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3467','BUBI10004','5/13/2023',301);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4778','BUED10002','9/28/2023',270);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1404','BUMA10003','12/22/2022',378);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6037','BULE10005','12/10/2022',327);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1375','BUMA10003','10/15/2023',39);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4945','BULE10005','02/11/2023',168);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1497','BUED10002','09/01/2023',137);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8666','BUMA10003','10/26/2023',14);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8373','BUBI10004','7/18/2023',392);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9930','BUBI10004','04/10/2023',209);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5515','BUMA10003','3/18/2023',23);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7729','BUBI10004','10/23/2023',336);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4290','BUBI10004','3/17/2023',474);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2562','BUMA10003','02/11/2023',265);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9652','BULE10005','5/15/2023',228);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4123','BUMA10003','3/19/2023',263);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2838','BULE10005','09/09/2023',210);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7959','BULE10005','7/15/2023',456);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5736','BULE10005','5/23/2023',469);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4466','BUED10002','7/22/2023',474);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5043','BUGL10001','05/03/2023',451);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7029','BUMA10003','02/10/2023',61);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5702','BULE10005','12/16/2022',401);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6638','BULE10005','6/13/2023',57);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8853','BUGL10001','02/09/2023',371);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6534','BUMA10003','06/05/2023',238);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7310','BULE10005','11/03/2023',152);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3987','BUED10002','01/09/2023',281);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5690','BUBI10004','12/04/2022',5);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4292','BUBI10004','02/10/2023',101);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3881','BUED10002','08/06/2023',493);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6801','BUMA10003','2/15/2023',306);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8282','BUBI10004','10/30/2023',344);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9526','BUED10002','04/01/2023',31);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9933','BUMA10003','02/12/2023',55);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9292','BUMA10003','07/05/2023',154);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3463','BUBI10004','2/28/2023',277);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8676','BUGL10001','4/21/2023',354);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9366','BUMA10003','12/23/2022',358);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9797','BULE10005','11/26/2023',186);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8794','BUED10002','9/20/2023',408);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4745','BUED10002','12/06/2022',412);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5876','BULE10005','10/15/2023',30);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4808','BUED10002','3/20/2023',418);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6576','BULE10005','01/10/2023',372);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3173','BUMA10003','08/09/2023',310);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5720','BUED10002','8/29/2023',120);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7874','BUBI10004','12/22/2022',436);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2179','BUBI10004','10/20/2023',343);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9888','BUGL10001','07/01/2023',8);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8288','BUMA10003','07/06/2023',106);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3496','BUED10002','5/14/2023',498);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3757','BUED10002','2/27/2023',138);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8458','BUED10002','12/15/2022',183);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5047','BUED10002','10/16/2023',385);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP3051','BULE10005','09/06/2023',340);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7844','BUGL10001','02/04/2023',377);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4310','BUMA10003','8/27/2023',421);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8845','BUGL10001','06/07/2023',210);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2747','BUGL10001','05/11/2023',149);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8828','BULE10005','12/18/2022',374);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4868','BUMA10003','01/03/2023',497);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5723','BUGL10001','10/31/2023',260);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5998','BUMA10003','05/03/2023',127);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5930','BUBI10004','8/15/2023',299);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1604','BUGL10001','9/26/2023',66);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9156','BULE10005','11/12/2023',21);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4686','BUBI10004','8/14/2023',293);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4451','BUMA10003','6/17/2023',325);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4781','BUBI10004','8/26/2023',465);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1100','BUGL10001','11/04/2023',113);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5790','BUBI10004','08/04/2023',432);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7037','BUGL10001','5/21/2023',139);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6627','BUED10002','5/17/2023',238);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9863','BUED10002','1/25/2023',361);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4665','BUGL10001','7/15/2023',479);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4107','BUGL10001','12/16/2022',348);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9429','BUMA10003','8/27/2023',44);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7910','BULE10005','04/04/2023',64);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1021','BUBI10004','09/02/2023',416);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7573','BUMA10003','6/21/2023',405);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2253','BUED10002','07/04/2023',455);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7102','BUGL10001','9/17/2023',266);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9592','BULE10005','09/02/2023',445);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4191','BUMA10003','11/15/2023',92);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9063','BUED10002','1/18/2023',112);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2734','BUBI10004','09/08/2023',420);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7540','BUBI10004','7/31/2023',340);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4418','BUED10002','01/12/2023',333);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9778','BUMA10003','05/09/2023',275);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6046','BUMA10003','4/22/2023',370);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8246','BUBI10004','2/20/2023',331);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4205','BUED10002','2/13/2023',227);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6290','BUGL10001','03/03/2023',226);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5547','BUGL10001','2/17/2023',428);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP7282','BUGL10001','2/25/2023',132);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP5850','BUMA10003','01/08/2023',397);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2337','BUGL10001','11/06/2023',229);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4547','BUBI10004','4/15/2023',315);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP1387','BUBI10004','09/06/2023',386);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP6245','BUED10002','7/16/2023',370);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP4922','BULE10005','9/28/2023',129);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2221','BUMA10003','07/10/2023',296);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP2924','BUGL10001','11/23/2023',25);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP8185','BUGL10001','3/17/2023',187);

INSERT INTO inventory(inventory_ID,branch_ID,receving_Date,total_InventoryQTY) VALUES ('BP9901','BULE10005','7/15/2023',293);


DROP TABLE IF EXISTS feedback;

CREATE TABLE IF NOT EXISTS feedback(

   feedback_ID    VARCHAR(7) NOT NULL 

  ,order_ID       VARCHAR(7) NOT NULL

  ,review         VARCHAR(297)

  ,staffRating    INTEGER 

  ,productRating  INTEGER 

  ,facilityRating INTEGER 

);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C241288','I127801','I love using BUNIQs gym training supports. They help me lift heavier weights and avoid injuries.',4,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C241288','I127801','I am a big fan of BUNIQs gym training supports. they are high-quality and affordable, and they help me get the most out of my workouts.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C241288','I173702','I have been using BUNIQs proteins and food supplements for years, and They have helped me achieve my fitness goals. they are delicious and effective.',4,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C241288','I337046','I am a picky eater, but BUNIQs proteins and food supplements are easy to digest and taste great. They have helped me improve my energy levels and muscle recovery.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C241288','I337046','I love the fit and feel of BUNIQs womens gym clothes. they are stylish and comfortable, and they help me perform my best.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C111565','I227836','I am always looking for new and stylish gym clothes, and BUNiQ never disappoints. Their clothes are always on-trend and made with high-quality materials.',4,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C266599','I227836','BUNIQs football clothing is perfect for both training and matches. It is comfortable, durable, and looks great.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C266599','I227836','BUNIQs football clothing is perfect for both training and matches. It is comfortable, durable, and looks great.',5,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C988172','I121056','I am a big fan of BUNIQs football kits. they are stylish and well-made, and they make me feel confident on the pitch.',4,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C189076','I121056','BUNIQs footballs are the best I have ever used. they are high-quality and have a great feel.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C189076','I121056','I have been using BUNIQs football boots for years, and they are always reliable. they are comfortable and supportive, and help me play my best',4,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C657758','I121056','BUNIQs kayaks are the perfect combination of stability, maneuverability, and affordability. they are great for both beginners and experienced kayakers.',5,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C657758','I293112','I love BUNIQs kayak paddles. they are lightweight, durable, and comfortable to grip.',5,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C657758','I293112','BUNIQs kayak wetsuits are super warm and comfortable. they are perfect for paddling in cold water.',4,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C151197','I293112','BUNIQs kayak gloves are essential for protecting my hands from the elements. they are comfortable and durable.',5,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C151197','I293112','I love BUNIQs neoprene boots. they are waterproof and warm, and they keep my feet dry and comfortable on the water',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C151197','I293112','BUNIQs road cycling clothing is the best I have ever used. It is comfortable, breathable, and stylish.',4,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C151197','I293455','I love the fit and feel of BUNIQs road cycling jerseys. they are aerodynamic and comfortable, and they help me ride faster.',5,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C176086','I293455','BUNIQs road bikes are perfect for both beginners and experienced cyclists. they are lightweight, fast, and well-made.',5,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C176086','I326945','I love BUNIQs road bike helmets. they are stylish and protective, and they offer great ventilation.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C176086','I326945','BUNIQs road bike wheels are lightweight and durable. They help me ride faster and more efficiently.',5,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C176086','I306368','I love BUNIQs road bike tyres and inner tubes. they are high-quality and reliable, and they help me avoid punctures.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C176086','I306368','BUNIQs kayaks are the perfect way to enjoy the water. they are affordable, reliable, and a lot of fun.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C159642','I306368','I love kayaking with BUNIQs gear. It is all high-quality and makes the experience even more enjoyable',5,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C159642','I139207','BUNIQs sports equipment is top-notch. It is always of the highest quality and helps me perform my best.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C283361','I139207','I have been using BUNIQs sports equipment for years, and It is always reliable and durable.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C283361','I139207','I love BUNIQs hiking boots. they are comfortable, supportive, and help me explore the outdoors.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C240286','I139207','I love BUNIQs ice skates. they are sharp, durable, and help me have fun on the ice.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C240286','I139207','I love BUNIQs sportswear. It is stylish, comfortable, and helps me feel confident on the field or court.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C240286','I640508','BUNIQs gym training supports are the best I have ever used. they are comfortable, durable, and help me lift heavier weights. I highly recommend them to anyone who is serious about their fitness goals.',4,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C191708','I640508','I am a big fan of BUNIQs gym training supports. They have helped me to improve my form and prevent injuries.',5,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C191708','I640508','I am a personal trainer and I recommend BUNIQs gym training supports to all of my clients. they are high-quality and affordable, and they help clients get the most out of their workouts',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C191708','I640508','I love BUNIQs proteins and food supplements. they are delicious and effective. They have helped me to gain muscle and improve my energy levels.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C191708','I179802','I am a picky eater, but BUNIQs proteins and food supplements are easy to digest and taste great. They have helped me to improve my overall health and well-being.',5,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C191708','I179802','I am a professional athlete and I use BUNIQs proteins and food supplements to fuel my training and recovery. they are essential for my success.',5,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C225330','I179802','BUNIQs womens gym clothes are stylish and comfortable. they are perfect for any type of workout.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C225330','I179802','I love the fit and feel of BUNIQs womens gym clothes. They make me feel confident and empowered.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C225330','I179802','I am always looking for new and stylish gym clothes, and BUNiQ never disappoints. Their clothes are always on-trend and made with high-quality materials.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C225330','I336189','BUNIQs mens gym clothes are the best I have ever used. they are comfortable, durable, and look great.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C312861','I336189','I love BUNIQs mens gym kits. they are stylish and well-made, and they make me feel confident in the gym.',4,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C312861','I336189','I am a big fan of BUNIQs mens gym clothes. they are comfortable, stylish, and affordable',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C312861','I336189','BUNIQs football clothing is perfect for both training and matches. It is comfortable, durable, and looks great.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C312861','I336189','I love BUNIQs football kits. they are stylish and well-made, and they make me feel confident on the pitch.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C312861','I688768','I am a big fan of BUNIQs football clothing. It is comfortable, stylish, and affordable.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C555402','I688768','BUNIQs footballs are the best I have ever used. they are high-quality and have a great feel.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C555402','I688768','I love BUNIQs football boots. they are comfortable, supportive, and help me play my best.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C555402','I688768','I am a big fan of BUNIQs football kits. they are stylish and well-made, and they make me feel confident on the pitch',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C555402','I688768','BUNIQs kayaks are the perfect combination of stability, maneuverability, and affordability. they are great for both beginners and experienced kayakers.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C555402','I294687','I love BUNIQs kayak paddles. they are lightweight, durable, and comfortable to grip.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C362288','I294687','BUNIQs kayak wetsuits are super warm and comfortable. they are perfect for paddling in cold water.',4,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C362288','I294687','BUNIQs kayak gloves are essential for protecting my hands from the elements. they are comfortable and durable.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C362288','I294687','I love BUNIQs neoprene boots. they are waterproof and warm, and they keep my feet dry and comfortable on the water.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C362288','I294687','BUNIQs road cycling clothing is the best I have ever used. It is comfortable, breathable, and stylish.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C362288','I195744','I love the fit and feel of BUNIQs road cycling jerseys. they are aerodynamic and comfortable, and they help me ride faster.',5,5,3);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C300786','I993048','I am a big fan of BUNIQs road cycling bib shorts. they are comfortable, supportive, and help me avoid saddle sores.',4,4,3);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C300786','I993048','BUNIQs road bikes are perfect for both beginners and experienced cyclists. they are lightweight, fast, and well-made.',5,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C300786','I993048','I love BUNIQs road bike helmets. they are stylish and protective, and they offer great ventilation.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C300786','I993048','I am a big fan of BUNIQs road bike wheels. they are lightweight and durable. They help me ride faster and more efficiently.',4,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C300786','I992454','I love BUNIQs gym training supports. they are comfortable, durable, and help me get the most out of my workouts.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C330667','I183746','As a personal trainer, I recommend BUNIQs gym training support to all of my clients. they are high-quality and affordable, and they help clients achieve their fitness goals.',4,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C218149','I183746','BUNIQs proteins and food supplements are delicious and effective. They have helped me gain muscle and improve my energy levels.',4,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C218149','I183746','I am a picky eater, but BUNIQs proteins and food supplements are easy to digest and taste great. They have helped me to improve my overall health and well-being.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C218149','I183746','I am a professional athlete, and I use BUNIQs proteins and food supplements to fuel my training and recovery. they are essential for my success.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C218149','I412481','BUNIQs womens gym clothes are stylish and comfortable. they are perfect for any type of workout.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C196845','I412481','I love the fit and feel of BUNIQs womens gym clothes. They make me feel confident and empowered.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C220180','I412481','I am always looking for new and stylish gym clothes, and BUNiQ never disappoints. Their clothes are always on-trend and made with high-quality materials.',5,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C220180','I823067','BUNIQs mens gym clothes are the best I have ever used. they are comfortable, durable, and look great.',4,5,3);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C220180','I252275','I love BUNIQs mens gym kits. they are stylish and well-made, and they make me feel confident in the gym.',5,4,3);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C220180','I252275','I am a big fan of BUNIQs mens gym clothes. they are comfortable, stylish, and affordable',4,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C125696','I252275','BUNIQs football clothing is perfect for both training and matches. It is comfortable, durable, and looks great.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C125696','I252275','I love BUNIQs football kits. they are stylish and well-made, and they make me feel confident on the pitch.',5,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C125696','I252275','I am a big fan of BUNIQs football clothing. It is comfortable, stylish, and affordable.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C322947','I174250','BUNIQs footballs are the best I have ever used. they are high-quality and have a great feel.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C313348','I174250','I love BUNIQs football boots. they are comfortable, supportive, and help me play my best.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C313348','I174250','I am a big fan of BUNIQs football kits. they are stylish and well-made, and they make me feel confident on the pitch.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C313348','I174250','BUNIQs kayaks are the perfect combination of stability, maneuverability, and affordability. they are great for both beginners and experienced kayakers.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C313348','I195396','I love BUNIQs kayak paddles. they are lightweight, durable, and comfortable to grip.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C313348','I195396','BUNIQs kayak wetsuits are super warm and comfortable. they are perfect for paddling in cold water.',4,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C204553','I195396','BUNIQs kayak gloves are essential for protecting my hands from the elements. they are comfortable and durable.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C204553','I196704','BUNIQs kayak wetsuits are super warm and comfortable. they are perfect for paddling in cold water.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C204553','I196704','I love BUNIQs neoprene boots. they are waterproof and warm, and they keep my feet dry and comfortable on the water.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C204553','I217053','BUNIQs road cycling clothing is the best I have ever used. It is comfortable, breathable, and stylish.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C285161','I217053','I love the fit and feel of BUNIQs road cycling jerseys. they are aerodynamic and comfortable, and they help me ride faster.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C285161','I217053','I am a big fan of BUNIQs road cycling bib shorts. they are comfortable, supportive, and help me avoid saddle sores.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C285161','I655874','BUNIQs road cycling socks are the best I have ever used. they are comfortable, wick away moisture, and help me prevent blisters.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C289625','I655874','BUNIQs road cycling shoes are the best I have ever used. they are comfortable, supportive, and help me transfer power efficiently.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C289625','I209744','BUNIQs road bikes are perfect for both beginners and experienced cyclists. they are lightweight, fast, and well-made.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C192344','I209744','I love BUNIQs road bike helmets. they are stylish and protective, and they offer great ventilation.',4,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C192344','I161949','I am a big fan of BUNIQs road bike wheels. they are lightweight and durable. They help me ride faster and more efficiently.',5,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C192344','I161949','BUNIQs road bike tyres and inner tubes are high-quality and reliable. They have helped me avoid punctures and keep me riding.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C447138','I161949','BUNIQs road bike seats are the best I have ever used. they are comfortable and supportive, and they help me ride for long distances without pain',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C447138','I161949','BUNIQs gym training supports are amazing! They help me lift heavier weights and improve my form.',5,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C251229','I331891','I love BUNIQs gym training supports. they are comfortable, durable, and help me get the most out of my workouts.',4,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C251229','I331891','As a personal trainer, I recommend BUNIQs gym training supports to all of my clients. they are high-quality and affordable, and they help clients achieve their fitness goals.BUNIQs gym training supports are the best I have ever used. they are comfortable, supportive, and help me lift more weight.',5,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C159164','I331891','I am a big fan of BUNIQs gym training support. they are stylish, durable, and help me look good while working out.',5,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C159164','I331891','BUNIQs proteins and food supplements are delicious and effective. They have helped me gain muscle and improve my energy levels.',4,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C159164','I768348','I am a picky eater, but BUNIQs proteins and food supplements are easy to digest and taste great. They have helped me to improve my overall health and well-being.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C159164','I768348','I am a professional athlete, and I use BUNIQs proteins and food supplements to fuel my training and recovery. they are essential for my success.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C501658','I768348','BUNIQs proteins and food supplements are the best I have ever used. they are high-quality and affordable, and they help me meet my nutritional needs.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C501658','I768348','I love BUNIQs proteins and food supplements. they are convenient and easy to add to my diet.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C501658','I109053','BUNIQs womens gym clothes are stylish and comfortable. they are perfect for any type of workout.',5,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C501658','I109053','I love the fit and feel of BUNIQs womens gym clothes. They make me feel confident and empowered.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C176727','I109053','I am always looking for new and stylish gym clothes, and BUNiQ never disappoints. Their clothes are always on-trend and made with high-quality materials.',5,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C176727','I167211','BUNIQs womens gym clothes are the best I have ever worn. they are comfortable, flattering, and make me feel good about myself.',4,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C176727','I167211','I love the variety of colors and styles available from BUNiQ.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C176727','I167211','BUNIQs mens gym clothes are the best I have ever used. they are comfortable, durable, and look great.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C232624','I339732','I love BUNIQs mens gym kits. they are stylish and well-made, and they make me feel confident in the gym.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C232624','I147062','I am a big fan of BUNIQs mens gym clothes. they are comfortable, stylish, and affordable.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C232624','I147062','BUNIQs mens gym clothes are the perfect blend of style and function. they are perfect for any type of workout.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C164092','I147062','I love the variety of styles available from BUNiQ.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C164092','I147062','BUNIQs football clothing is perfect for both training and matches. It is comfortable, durable, and looks great.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C164092','I147062','I love BUNIQs football kits. they are stylish and well-made, and they make me feel confident on the pitch.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C276887','I187519','I am a big fan of BUNIQs football clothing. It is comfortable, stylish, and affordable.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C245456','I187519','BUNIQs football clothing is the perfect way to show my support for my team.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C245456','I106674','I love the variety of designs and colors available from BUNiQ.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C245456','I473411','BUNIQs footballs are the best I have ever used. they are high-quality and have a great feel.',5,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C245456','I473411','I love BUNIQs football boots. they are comfortable, supportive, and help me play my best.',4,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C245456','I473411','I am a big fan of BUNIQs football kits. they are stylish and well-made, and they make me feel confident on the pitch.',5,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C450287','I246550','BUNIQs football balls, football boots, and football kits are the perfect way to outfit myself for the season.',5,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C450287','I246550','BUNIQs kayaks are the perfect combination of stability, maneuverability, and affordability. they are great for both beginners and experienced kayakers.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C204279','I246550','I love BUNIQs kayak paddles. they are lightweight, durable, and comfortable to grip.',5,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C452806','I246550','BUNIQs kayak wetsuits are super warm and comfortable. they are perfect for paddling in cold water.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C452806','I138674','BUNIQs kayak gloves are essential for protecting my hands from the elements. they are comfortable and durable.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C452806','I138674','BUNIQs neoprene boots are waterproof and warm, and they keep my feet dry and comfortable on the water.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C716788','I138674','BUNIQs road cycling clothing is the best I have ever used. It is comfortable, breathable, and stylish.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C716788','I138674','I love the fit and feel of BUNIQs road cycling jerseys. they are aerodynamic and comfortable, and they help me ride faster.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C716788','I138674','BUNIQs road cycling bib shorts are comfortable and supportive, and help me avoid saddle sores.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C716788','I752693','BUNIQs road cycling socks are the best I have ever used. they are comfortable, wick away moisture, and help me prevent blisters.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C155059','I752693','BUNIQs road cycling shoes are the best I have ever used. they are comfortable, supportive, and help me transfer power efficiently.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C155059','I752693','BUNIQs road bikes are perfect for both beginners and experienced cyclists. they are lightweight, fast, and well-made.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C155059','I752693','I love BUNIQs road bike helmets. they are stylish and protective, and they offer great ventilation.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C155059','I826174','BUNIQs road bike wheels are lightweight and durable. They help me ride faster and more efficiently.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C155059','I826174','BUNIQs road bike tires and inner tubes are high-quality and reliable. They have helped me avoid punctures and keep me riding.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C306662','I826174','BUNIQs sports equipment is top-notch. It is always of the highest quality and helps me perform my best.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C306662','I826174','I have been using BUNIQs sports equipment for years, and It is always reliable and durable.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C306662','I826174','BUNIQs sportswear is stylish, comfortable, and helps me feel confident on the field or court.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C306662','I296025','BUNIQs sports equipment is the perfect way to outfit myself for any sport I play.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C607615','I117291','I am a loyal customer of BUNiQ because I know I can always count on their products to perform well.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C607615','I267193','BUNiQ is my go-to brand for sports equipment and apparel. They never disappoint.',4,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C607615','I267193','BUNIQs products are the best I have ever used. they are high-quality, affordable, and stylish.',5,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C607615','I267193','I am a big fan of BUNiQ because they make it easy for me to get the gear I need to reach my fitness goals.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C607615','I205366','BUNiQ is my go-to brand for all my fitness needs. I can always count on them to deliver high-quality products.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C120164','I205366','I am so glad I found BUNiQ. Their products have helped me improve my fitness and overall well-being.',5,4,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C134449','I269690','BUNiQ is a brand that I can trust. I know that their products are always made with the highest quality materials and craftsmanship.',4,5,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C317818','I269690','I am a loyal customer of BUNiQ because I know that their products are worth the investment. they are made to last and they help me perform at my best.',4,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C317818','I269690','BUNiQ is a brand that has a bright future. I am confident that they''ll continue to produce innovative and high-quality products that will help people achieve their fitness goals.',5,5,5);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C317818','I304265','I am so glad that I am part of the BUNiQ community. I am excited to see what the future holds for this amazing brand.',5,4,4);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C241642','I246562','BUNIQs products have transformed my workouts. I feel more confident and empowered, and I am seeing results that I never thought were possible.',4,5,3);

INSERT INTO feedback(feedback_ID,order_ID,review,staffRating,productRating,facilityRating) VALUES ('C241642','I202367','BUNiQ is more than just a brand; It is a lifestyle. Their products are not just about getting you to the gym; they are about helping you achieve your full potential.',NULL,NULL,NULL);
 
DROP TABLE if exists delivery;

CREATE TABLE IF NOT EXISTS delivery(
   delivery_ID  VARCHAR(12)  NOT NULL PRIMARY KEY,
   deliveryName VARCHAR(11) NOT NULL,
   phoneNumber  VARCHAR(12) NOT NULL,
   email        VARCHAR(33) NOT NULL
);

INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('SHP555666777','Royal Mail','669-792-1661','Ernest.Barnes31@outlook.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('TRK666777888','DHL Express','858-637-6955','Andrea_Baker94@aol.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('PKG222333444','Hermes','652-885-2745','Rebecca_Parker@comcast.net');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('EXP777888999','DPD','364-656-8427','Laura_M@gmail.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('ORD555666777','Parcelforce','713-226-5883','LHines@verizon.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('SHP444555666','DHL Express','420-332-5209','Rangel.Dylan@comcast.net');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('TRK333555666','Parcelforce','286-669-4333','Velez_William@mail.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('PKG777888999','DPD','341-726-5787','Steven.Murphy54@aol.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('EXP111222333','UK Mail','316-648-6176','MichaelMoore81@outlook.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('ORD777888999','UK Mail','369-823-5447','Charles_H@protonmail.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('CNM666555444','Parcelforce','870-172-6668','Hoffman_K@yahoo.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('SHP888999000','Hermes','213-588-4720','Kristen_W@gmail.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('TRK444555666','DPD','813-682-9758','Joseph_Baker73@yahoo.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('PKG555666777','Royal Mail','508-759-4216','Byrd_L@hotmail.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('EXP444333222','DHL Express','222-966-4848','Stacey.P@outlook.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('CNM555444333','Parcelforce','586-673-9514','Chris_Smith@yahoo.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('ORD666555444','Royal Mail','833-887-7898','PhD.Priscilla74@att.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('CNM444555666','Hermes','804-383-4080','Smith.Laurie@att.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('SHP666777888','DPD','211-071-2173','Casey_T78@outlook.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('TRK222333444','Parcelforce','435-075-8409','Rachel.F@protonmail.com');
INSERT INTO delivery(delivery_ID,deliveryName,phoneNumber,email) VALUES ('PKG888999000','DHL Express','790-746-7471','Edward.T@zoho.com');

DROP TABLE if exists invoice;

CREATE TABLE if not exists invoice(

   invoice_ID  VARCHAR(12) NOT NULL PRIMARY KEY

  ,invoiceDate VARCHAR(33) NOT NULL

  ,payment  VARCHAR(12) NOT NULL

  ,quantity  VARCHAR(33) NOT NULL

  ,order_ID VARCHAR(33) NOT NULL

);
 
INSERT INTO invoice (invoice_ID, invoiceDate, payment, quantity, order_ID)
 
VALUES
 
('INV-001', '2016-10-30 09:58:00', 342, 6, 'I138884'),
 
('INV-002', '2016-10-30 09:58:00', 35, 1, 'I317333'),
 
('INV-003', '2016-10-30 09:58:00', 35, 2, 'I127801'),
 
('INV-004', '2016-10-30 09:58:00', 52.8, 1, 'I173702'),
 
('INV-005', '2016-10-30 09:59:00', 140.52, 2, 'I337046'),
 
('INV-006', '2016-10-30 09:59:00', 173.8, 3, 'I227836'),
 
('INV-007', '2016-10-30 09:59:00', 165.48, 4, 'I121056'),
 
('INV-008', '2016-10-30 09:59:00', 254.64, 4, 'I293112'),
 
('INV-009', '2016-10-30 10:00:00', 58.56, 2, 'I293455'),
 
('INV-010', '2016-10-30 10:00:00', 139.2, 2, 'I326945'),
 
('INV-011', '2016-10-30 10:00:00', 157.2, 3, 'I306368'),
 
('INV-012', '2016-10-30 10:00:00', 302.16, 5, 'I139207'),
 
('INV-013', '2016-10-30 10:00:00', 354.36, 4, 'I640508'),
 
('INV-014', '2016-10-30 10:01:00', 282.28, 5, 'I179802'),
 
('INV-015', '2016-10-30 10:01:00', 264, 5, 'I336189'),
 
('INV-016', '2016-10-30 10:01:00', 262.68, 5, 'I688768'),
 
('INV-017', '2016-10-30 10:01:00', 313.2, 5, 'I294687'),
 
('INV-018', '2016-10-30 10:02:00', 34.32, 1, 'I195744'),
 
('INV-019', '2016-10-30 10:02:00', 203.4, 4, 'I993048'),
 
('INV-020', '2016-10-30 10:02:00', 32.4, 1, 'I992454'),
 
('INV-021', '2016-10-30 10:02:00', 206.88, 4, 'I183746'),
 
('INV-022', '2016-10-30 10:03:00', 182.4, 3, 'I412481'),
 
('INV-023', '2016-10-30 10:03:00', 27.6, 1, 'I823067'),
 
('INV-024', '2016-10-30 10:03:00', 316.44, 5, 'I252275'),
 
('INV-025', '2016-10-30 10:03:00', 305.28, 4, 'I174250'),
 
('INV-026', '2016-10-30 10:04:00', 168.32, 3, 'I195396'),
 
('INV-027', '2016-10-30 10:04:00', 148.56, 2, 'I196704'),
 
('INV-028', '2016-10-30 10:04:00', 270.6, 3, 'I217053'),
 
('INV-029', '2016-10-30 10:04:00', 81.36, 2, 'I655874'),
 
('INV-030', '2016-10-30 10:04:00', 83.64, 2, 'I209744'),
 
('INV-031', '2016-10-30 10:05:00', 298.08, 4, 'I161949'),
 
('INV-032', '2016-10-30 10:05:00', 180.12, 4, 'I331891'),
 
('INV-033', '2016-10-30 10:05:00', 284.6, 4, 'I768348'),
 
('INV-034', '2016-10-30 10:05:00', 253.68, 3, 'I109053'),
 
('INV-035', '2016-10-30 10:06:00', 210.36, 3, 'I167211'),
 
('INV-036', '2016-10-30 10:06:00', 69.96, 1, 'I339732'),
 
('INV-037', '2016-10-30 10:06:00', 242.61, 5, 'I147062'),
 
('INV-038', '2016-10-30 10:06:00', 122.64, 2, 'I187519'),
 
('INV-039', '2016-10-30 10:07:00', 68.64, 1, 'I106674'),
 
('INV-040', '2016-10-30 10:07:00', 260.04, 3, 'I473411'),
 
('INV-041', '2016-10-30 10:07:00', 276.36, 4, 'I246550'),
 
('INV-042', '2016-10-30 10:07:00', 228.96, 5, 'I138674'),
 
('INV-043', '2016-10-30 10:07:00', 189.6, 4, 'I752693'),
 
('INV-044', '2016-10-30 10:08:00', 258.72, 5, 'I826174'),
 
('INV-045', '2016-10-30 10:08:00', 97.2, 1, 'I296025'),
 
('INV-046', '2016-10-30 10:08:00', 87.6, 1, 'I117291'),
 
('INV-047', '2016-10-30 10:08:00', 132.6, 3, 'I267193'),
 
('INV-048', '2016-10-30 10:09:00', 121.2, 2, 'I205366'),
 
('INV-049', '2016-10-30 10:09:00', 162.84, 3, 'I269690'),
 
('INV-050', '2016-10-30 10:09:00', 104.28, 1, 'I304265'),
 
('INV-051', '2016-10-30 10:09:00', 34.8, 1, 'I246562'),
 
('INV-052', '2016-10-30 10:10:00', 213.6, 3, 'I202367'),
 
('INV-053', '2016-10-30 10:10:00', 345.84, 5, 'I664787'),
 
('INV-054', '2016-10-30 10:10:00', 187.41, 4, 'I160777'),
 
('INV-055', '2016-10-30 10:10:00', 63.6, 1, 'I137794'),
 
('INV-056', '2016-10-30 10:11:00', 133.08, 3, 'I148377'),
 
('INV-057', '2016-10-30 10:11:00', 276.92, 5, 'I258195'),
 
('INV-058', '2016-10-30 10:11:00', 106.44, 3, 'I300213'),
 
('INV-059', '2016-10-30 10:11:00', 238.92, 3, 'I263803'),
 
('INV-060', '2016-10-30 10:11:00', 223.08, 4, 'I335713'),
 
('INV-061', '2016-10-30 10:12:00', 175.44, 2, 'I133061'),
 
('INV-062', '2016-10-30 10:12:00', 156, 2, 'I207205'),
 
('INV-063', '2016-10-30 10:12:00', 114, 2, 'I209289'),
 
('INV-064', '2016-10-30 10:12:00', 88.8, 1, 'I157285'),
 
('INV-065', '2016-10-30 10:13:00', 255.48, 4, 'I218590'),
 
('INV-066', '2016-10-30 10:13:00', 53.6, 2, 'I181109'),
 
('INV-067', '2016-10-30 10:13:00', 243.12, 4, 'I221715'),
 
('INV-068', '2016-10-30 10:13:00', 199.2, 2, 'I204979'),
 
('INV-069', '2016-10-30 10:14:00', 133.2, 2, 'I115146'),
 
('INV-070', '2016-10-30 10:14:00', 121.6, 3, 'I883721'),
 
('INV-071', '2016-10-30 10:14:00', 249.6, 3, 'I402376'),
 
('INV-072', '2016-10-30 10:14:00', 314.16, 5, 'I251356'),
 
('INV-073', '2016-10-30 10:14:00', 25.2, 1, 'I292239'),
 
('INV-074', '2016-10-30 10:15:00', 318.72, 5, 'I276526'),
 
('INV-075', '2016-10-30 10:15:00', 203.04, 5, 'I260525'),
 
('INV-076', '2016-10-30 10:15:00', 154.04, 3, 'I870944'),
 
('INV-077', '2016-10-30 10:15:00', 147, 3, 'I739573'),
 
('INV-078', '2016-10-30 10:16:00', 96, 2, 'I115870'),
 
('INV-079', '2016-10-30 10:16:00', 182.52, 3, 'I190444'),
 
('INV-080', '2016-10-30 10:16:00', 130.65, 2, 'I309552'),
 
('INV-081', '2016-10-30 10:16:00', 317.52, 4, 'I306076'),
 
('INV-082', '2016-10-30 10:17:00', 307.56, 5, 'I321683'),
 
('INV-083', '2016-10-30 10:17:00', 263.4, 4, 'I151332'),
 
('INV-084', '2016-10-30 10:17:00', 252.96, 4, 'I340014'),
 
('INV-085', '2016-10-30 10:17:00', 56.76, 1, 'I249424'),
 
('INV-086', '2016-10-30 10:18:00', 151.56, 2, 'I227716'),
 
('INV-087', '2016-10-30 10:18:00', 25.2, 1, 'I140663'),
 
('INV-088', '2016-10-30 10:18:00', 192.24, 5, 'I253242'),
 
('INV-089', '2016-10-30 10:18:00', 137.4, 4, 'I108359'),
 
('INV-090', '2016-10-30 10:18:00', 87.12, 1, 'I195567'),
 
('INV-091', '2016-10-30 10:19:00', 220.08, 3, 'I289643'),
 
('INV-092', '2016-10-30 10:19:00', 116.4, 1, 'I722319'),
 
('INV-093', '2016-10-30 10:19:00', 212.04, 4, 'I317105'),
 
('INV-094', '2016-10-30 10:19:00', 287.76, 5, 'I215721'),
 
('INV-095', '2016-10-30 10:20:00', 15, 1, 'I154469'),
 
('INV-096', '2016-10-30 10:20:00', 107.4, 3, 'I172458'),
 
('INV-097', '2016-10-30 10:20:00', 24, 1, 'I297270'),
 
('INV-098', '2016-10-30 10:20:00', 102.6, 2, 'I153930'),
 
('INV-099', '2016-10-30 10:21:00', 159.6, 2, 'I282854'),
 
('INV-100', '2016-10-30 10:21:00', 280.2, 4, 'I869144'),
 
('INV-101', '2016-10-30 10:21:00', 272.52, 5, 'I283443'),
 
('INV-102', '2016-10-30 10:21:00', 148.32, 2, 'I193271'),
 
('INV-103', '2016-10-30 10:21:00', 202.8, 2, 'I985478'),
 
('INV-104', '2016-10-30 10:22:00', 228.6, 3, 'I200392'),
 
('INV-105', '2016-10-30 10:22:00', 57.6, 1, 'I256691'),
 
('INV-106', '2016-10-30 10:22:00', 91.8, 3, 'I796162'),
 
('INV-107', '2016-10-30 10:22:00', 26, 1, 'I224371'),
 
('INV-108', '2016-10-30 10:23:00', 152.48, 3, 'I215998'),
 
('INV-109', '2016-10-30 10:23:00', 256.92, 5, 'I338966'),
 
('INV-110', '2016-10-30 10:23:00', 56.76, 1, 'I293215'),
 
('INV-111', '2016-10-30 10:23:00', 228.08, 5, 'I149688'),
 
('INV-112', '2016-10-30 10:24:00', 156.6, 3, 'I133061'),
 
('INV-113', '2016-10-30 10:24:00', 25.2, 1, 'I292239'),
 
('INV-114', '2016-10-30 10:24:00', 230.76, 3, 'I215721'),
 
('INV-115', '2016-10-30 10:24:00', 308.16, 5, 'I216061'),
 
('INV-116', '2016-10-30 10:25:00', 156.6, 3, 'I246375'),
 
('INV-117', '2016-10-30 10:25:00', 79.56, 2, 'I103596'),
 
('INV-118', '2016-10-30 10:25:00', 117.12, 3, 'I774221'),
 
('INV-119', '2016-10-30 10:25:00', 70.44, 2, 'I202171'),
 
('INV-120', '2016-10-30 10:25:00', 131.64, 3, 'I276763'),
 
('INV-121', '2016-10-30 10:26:00', 21.6, 1, 'I142331'),
 
('INV-122', '2016-10-30 10:26:00', 167.64, 2, 'I222983'),
 
('INV-123', '2016-10-30 10:26:00', 195.6, 3, 'I164665'),
 
('INV-124', '2016-10-30 10:26:00', 228.68, 4, 'I133387'),
 
('INV-125', '2016-10-30 10:27:00', 131.28, 3, 'I276763'),
 
('INV-126', '2016-10-30 10:27:00', 148.8, 3, 'I273890'),
 
('INV-127', '2016-10-30 10:27:00', 117.12, 3, 'I774221'),
 
('INV-128', '2016-10-30 10:27:00', 70.44, 2, 'I202171'),
 
('INV-129', '2016-10-30 10:28:00', 69.96, 2, 'I339732'),
 
('INV-130', '2016-10-30 10:28:00', 245.04, 4, 'I160221'),
 
('INV-131', '2016-10-30 10:28:00', 331.32, 5, 'I106691'),
 
('INV-132', '2016-10-30 10:28:00', 34.32, 1, 'I129886'),
 
('INV-133', '2016-10-30 10:28:00', 409.56, 5, 'I745394'),
 
('INV-134', '2016-10-30 10:29:00', 35.4, 2, 'I157056'),
 
('INV-135', '2016-10-30 10:29:00', 84.24, 2, 'I304531'),
 
('INV-136', '2016-10-30 10:29:00', 26.4, 1, 'I762439'),
 
('INV-137', '2016-10-30 10:29:00', 222.6, 4, 'I151332'),
 
('INV-138', '2016-10-30 10:30:00', 45.36, 1, 'I151588'),
 
('INV-139', '2016-10-30 10:30:00', 54.12, 1, 'I657069'),
 
('INV-140', '2016-10-30 10:30:00', 47.52, 1, 'I122655'),
 
('INV-141', '2016-10-30 10:30:00', 174, 3, 'I236914'),
 
('INV-142', '2016-10-30 10:31:00', 356.4, 5, 'I247471'),
 
('INV-143', '2016-10-30 10:31:00', 211.04, 5, 'I362306'),
 
('INV-144', '2016-10-30 10:31:00', 230.76, 3, 'I215721'),
 
('INV-145', '2016-10-30 10:31:00', 308.16, 5, 'I216061'),
 
('INV-146', '2016-10-30 10:32:00', 156.6, 3, 'I246375'),
 
('INV-147', '2016-10-30 10:32:00', 79.56, 2, 'I103596'),
 
('INV-148', '2016-10-30 10:32:00', 54.12, 1, 'I259878'),
 
('INV-149', '2016-10-30 10:32:00', 127.2, 3, 'I206422'),
 
('INV-150', '2016-10-30 10:32:00', 163.08, 2, 'I206424');

DROP TABLE if exists category;

CREATE TABLE if not exists category(

   category_ID VARCHAR(9)  NOT NULL PRIMARY KEY

  ,category    VARCHAR(13) NOT NULL

);

INSERT INTO category(category_ID,category) VALUES ('CATBAD001','Badminton');

INSERT INTO category(category_ID,category) VALUES ('CATBAD002','Badminton');

INSERT INTO category(category_ID,category) VALUES ('CATBAD003','Badminton');

INSERT INTO category(category_ID,category) VALUES ('CATBAD004','Badminton');

INSERT INTO category(category_ID,category) VALUES ('CATBAD005','Badminton');

INSERT INTO category(category_ID,category) VALUES ('CATBAD006','Badminton');

INSERT INTO category(category_ID,category) VALUES ('CATBAD007','Badminton');

INSERT INTO category(category_ID,category) VALUES ('CATBAD008','Badminton');

INSERT INTO category(category_ID,category) VALUES ('CATBAD009','Badminton');

INSERT INTO category(category_ID,category) VALUES ('CATBAD010','Badminton');

INSERT INTO category(category_ID,category) VALUES ('CATBAD011','Badminton');

INSERT INTO category(category_ID,category) VALUES ('CATBAD012','Badminton');

INSERT INTO category(category_ID,category) VALUES ('CATBAD013','Badminton');

INSERT INTO category(category_ID,category) VALUES ('CATBAD014','Badminton');

INSERT INTO category(category_ID,category) VALUES ('CATBAS015','Baseball');

INSERT INTO category(category_ID,category) VALUES ('CATBAS016','Baseball');

INSERT INTO category(category_ID,category) VALUES ('CATBAS017','Baseball');

INSERT INTO category(category_ID,category) VALUES ('CATBAS018','Baseball');

INSERT INTO category(category_ID,category) VALUES ('CATBAS019','Baseball');

INSERT INTO category(category_ID,category) VALUES ('CATBAS020','Baseball');

INSERT INTO category(category_ID,category) VALUES ('CATBAS021','Baseball');

INSERT INTO category(category_ID,category) VALUES ('CATBAS022','Baseball');

INSERT INTO category(category_ID,category) VALUES ('CATBKT023','Basketball');

INSERT INTO category(category_ID,category) VALUES ('CATBKT024','Basketball');

INSERT INTO category(category_ID,category) VALUES ('CATBKT025','Basketball');

INSERT INTO category(category_ID,category) VALUES ('CATBKT026','Basketball');

INSERT INTO category(category_ID,category) VALUES ('CATBKT027','Basketball');

INSERT INTO category(category_ID,category) VALUES ('CATBKT028','Basketball');

INSERT INTO category(category_ID,category) VALUES ('CATBKT029','Basketball');

INSERT INTO category(category_ID,category) VALUES ('CATBOX030','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX031','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX032','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX033','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX034','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX035','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX036','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX037','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX038','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX039','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX040','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX041','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX042','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX043','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX044','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX045','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX046','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATBOX047','Boxing');

INSERT INTO category(category_ID,category) VALUES ('CATCYC048','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC049','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC050','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC051','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC052','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC053','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC054','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC055','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC056','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC057','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC058','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC059','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC060','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC061','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC062','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC063','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC064','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC065','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC066','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC067','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC068','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATCYC069','Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATFAG070','Fitness & Gym');

INSERT INTO category(category_ID,category) VALUES ('CATFAG071','Fitness & Gym');

INSERT INTO category(category_ID,category) VALUES ('CATFAG072','Fitness & Gym');

INSERT INTO category(category_ID,category) VALUES ('CATFAG073','Fitness & Gym');

INSERT INTO category(category_ID,category) VALUES ('CATFAG074','Fitness & Gym');

INSERT INTO category(category_ID,category) VALUES ('CATFAG075','Fitness & Gym');

INSERT INTO category(category_ID,category) VALUES ('CATFAG076','Fitness & Gym');

INSERT INTO category(category_ID,category) VALUES ('CATFAG077','Fitness & Gym');

INSERT INTO category(category_ID,category) VALUES ('CATFAG078','Fitness & Gym');

INSERT INTO category(category_ID,category) VALUES ('CATFAG079','Fitness & Gym');

INSERT INTO category(category_ID,category) VALUES ('CATFAG080','Fitness & Gym');

INSERT INTO category(category_ID,category) VALUES ('CATFAG081','Fitness & Gym');

INSERT INTO category(category_ID,category) VALUES ('CATFAG082','Fitness & Gym');

INSERT INTO category(category_ID,category) VALUES ('CATFAG083','Fitness & Gym');

INSERT INTO category(category_ID,category) VALUES ('CATFOO084','Football');

INSERT INTO category(category_ID,category) VALUES ('CATFOO085','Football');

INSERT INTO category(category_ID,category) VALUES ('CATFOO086','Football');

INSERT INTO category(category_ID,category) VALUES ('CATFOO087','Football');

INSERT INTO category(category_ID,category) VALUES ('CATFOO088','Football');

INSERT INTO category(category_ID,category) VALUES ('CATFOO089','Football');

INSERT INTO category(category_ID,category) VALUES ('CATFOO090','Football');

INSERT INTO category(category_ID,category) VALUES ('CATFOO091','Football');

INSERT INTO category(category_ID,category) VALUES ('CATKYK092','Kayaking');

INSERT INTO category(category_ID,category) VALUES ('CATKYK093','Kayaking');

INSERT INTO category(category_ID,category) VALUES ('CATKYK094','Kayaking');

INSERT INTO category(category_ID,category) VALUES ('CATKYK095','Kayaking');

INSERT INTO category(category_ID,category) VALUES ('CATKYK096','Kayaking');

INSERT INTO category(category_ID,category) VALUES ('CATRCY097','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY098','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY099','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY100','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY101','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY102','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY103','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY104','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY105','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY106','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY107','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY108','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY109','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY110','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY111','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY112','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY113','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY114','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY115','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATRCY116','Road Cycling');

INSERT INTO category(category_ID,category) VALUES ('CATSCD117','Scuba Diving');

INSERT INTO category(category_ID,category) VALUES ('CATSCD118','Scuba Diving');

INSERT INTO category(category_ID,category) VALUES ('CATSCD119','Scuba Diving');

INSERT INTO category(category_ID,category) VALUES ('CATSCD120','Scuba Diving');

INSERT INTO category(category_ID,category) VALUES ('CATSWM121','Swimming');

INSERT INTO category(category_ID,category) VALUES ('CATSWM122','Swimming');

INSERT INTO category(category_ID,category) VALUES ('CATSWM123','Swimming');

INSERT INTO category(category_ID,category) VALUES ('CATSWM124','Swimming');

INSERT INTO category(category_ID,category) VALUES ('CATSWM125','Swimming');

INSERT INTO category(category_ID,category) VALUES ('CATSWM126','Swimming');

INSERT INTO category(category_ID,category) VALUES ('CATSWM127','Swimming');

INSERT INTO category(category_ID,category) VALUES ('CATSWM128','Swimming');

INSERT INTO category(category_ID,category) VALUES ('CATTAT129','Table Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTAT130','Table Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTAT131','Table Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTAT132','Table Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTAT133','Table Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTAT134','Table Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTAT135','Table Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTAT136','Table Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTAT137','Table Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTAT138','Table Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTAT139','Table Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTAT140','Table Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTAT141','Table Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTAT142','Table Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTAT143','Table Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTEN144','Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTEN145','Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTEN146','Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTEN147','Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTEN148','Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTEN149','Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTEN150','Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTEN151','Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTEN152','Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTEN153','Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTEN154','Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTEN155','Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTEN156','Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTEN157','Tennis');

INSERT INTO category(category_ID,category) VALUES ('CATTRN158','Trail Running');

INSERT INTO category(category_ID,category) VALUES ('CATTRN159','Trail Running');

INSERT INTO category(category_ID,category) VALUES ('CATTRN160','Trail Running');

INSERT INTO category(category_ID,category) VALUES ('CATTRN161','Trail Running');

INSERT INTO category(category_ID,category) VALUES ('CATTRN162','Trail Running');

INSERT INTO category(category_ID,category) VALUES ('CATTRN163','Trail Running');

INSERT INTO category(category_ID,category) VALUES ('CATTRN164','Trail Running');

INSERT INTO category(category_ID,category) VALUES ('CATTRN165','Trail Running');

INSERT INTO category(category_ID,category) VALUES ('CATTRN166','Trail Running');

INSERT INTO category(category_ID,category) VALUES ('CATTRN167','Trail Running');

INSERT INTO category(category_ID,category) VALUES ('CATTRN168','Trail Running');

INSERT INTO category(category_ID,category) VALUES ('CATTRK169','Trekking');

INSERT INTO category(category_ID,category) VALUES ('CATTRK170','Trekking');

INSERT INTO category(category_ID,category) VALUES ('CATTRK171','Trekking');

INSERT INTO category(category_ID,category) VALUES ('CATTRK172','Trekking');

INSERT INTO category(category_ID,category) VALUES ('CATYOG173','Yoga');

INSERT INTO category(category_ID,category) VALUES ('CATYOG174','Yoga');

INSERT INTO category(category_ID,category) VALUES ('CATYOG175','Yoga');


DROP TABLE IF EXISTS employee;

CREATE TABLE IF NOT EXISTS employee(

   branch_ID   VARCHAR(9) NOT NULL 

  ,employee_ID VARCHAR(4) NOT NULL PRIMARY KEY

  ,first_Name  VARCHAR(9) NOT NULL

  ,last_Name   VARCHAR(17) NOT NULL

  ,email       VARCHAR(20) NOT NULL

  ,designation VARCHAR(18) NOT NULL

  ,phoneNumber VARCHAR(12) NOT NULL

  ,DOB         VARCHAR(19) NOT NULL

  ,reportTo    INTEGER  NOT NULL

  ,address_ID  INTEGER  NOT NULL

);

INSERT INTO employee(branch_ID,employee_ID,first_Name,last_Name,email,designation,phoneNumber,DOB,reportTo,address_ID) VALUES

('BUED10000','E100','Nick','Fury','fury221@buniq.com','CEO','502-221-1234','1975-02-05 00:00:00',0,211)

,('BUGL10001','E101','Guy','Gilbert','guy1@buniq.com','sales assistant','320-555-0195','1981-11-12 00:00:00',161,212)

,('BUED10002','E102','Kevin','Brown','kevin0@buniq.com','sales assistant','150-555-0189','1986-12-01 00:00:00',167,181)

,('BUMA10003','E103','Roberto','Tamburello','roberto0@buniq.com','sales assistant','212-555-0187','1974-06-12 00:00:00',158,272)

,('BUBI10004','E104','Rob','Walters','rob0@buniq.com','sales assistant','612-555-0100','1974-07-23 00:00:00',164,151)

,('BULE10005','E105','Roby','Halters','roby@buniq.com','sales assistant','612-555-0100','1974-07-23 00:00:00',165,242)

,('BUGL10001','E106','Thierry','D''Hers','thierry0@buniq.com','sales assistant','168-555-0183','1959-02-26 00:00:00',161,213)

,('BUED10002','E107','David','Bradley','david0@buniq.com','sales assistant','913-555-0172','1974-10-17 00:00:00',167,182)

,('BUMA10003','E108','David','Johnson','david1@buniq.com','sales assistant','913-555-0172','1974-10-17 00:00:00',158,273)

,('BUBI10004','E109','JoLynn','Dobney','jolynn0@buniq.com','sales assistant','903-555-0145','1955-08-16 00:00:00',164,152)

,('BULE10005','E110','Ruth','Ellerbrock','ruth0@buniq.com','sales assistant','145-555-0130','1956-01-03 00:00:00',165,243)

,('BUGL10001','E111','Gail','Erickson','gail0@buniq.com','sales assistant','849-555-0139','1952-04-27 00:00:00',161,214)

,('BUED10002','E112','Barry','Johnson','barry0@buniq.com','sales assistant','206-555-0180','1955-10-25 00:00:00',167,183)

,('BUMA10003','E113','Jossef','Goldberg','jossef0@buniq.com','sales assistant','122-555-0189','1958-10-09 00:00:00',158,274)

,('BUBI10004','E114','Terri','Duffy','terri0@buniq.com','sales assistant','819-555-0175','1971-03-01 00:00:00',164,153)

,('BULE10005','E115','Sidney','Higa','sidney0@buniq.com','sales assistant','424-555-0189','1956-03-30 00:00:00',165,244)

,('BUGL10001','E116','Taylor','Maxwell','taylor0@buniq.com','sales assistant','508-555-0165','1955-10-31 00:00:00',161,215)

,('BUED10002','E117','Jeffrey','Ford','jeffrey0@buniq.com','sales assistant','984-555-0185','1956-02-09 00:00:00',167,184)

,('BUMA10003','E118','Jo','Brown','jo0@buniq.com','sales assistant','632-555-0129','1956-05-08 00:00:00',158,275)

,('BUBI10004','E119','Doris','Hartwig','doris0@buniq.com','sales assistant','328-555-0150','1955-11-03 00:00:00',164,154)

,('BULE10005','E120','John','Campbell','john0@buniq.com','sales assistant','435-555-0113','1956-03-07 00:00:00',165,245)

,('BUGL10001','E121','Diane','Glimp','diane0@buniq.com','sales assistant','202-555-0151','1955-10-28 00:00:00',161,216)

,('BUED10002','E122','Steven','Selikoff','steven0@buniq.com','sales assistant','925-555-0114','1976-12-12 00:00:00',167,185)

,('BUMA10003','E123','Peter','Krebs','peter0@buniq.com','sales assistant','913-555-0196','1982-06-03 00:00:00',158,276)

,('BUBI10004','E124','Stuart','Munson','stuart0@buniq.com','sales assistant','413-555-0136','1962-04-13 00:00:00',164,155)

,('BULE10005','E125','Greg','Alderson','greg0@buniq.com','sales assistant','332-555-0150','1975-11-15 00:00:00',165,246)

,('BUGL10001','E126','David','Johnson','david1@buniq.com','sales assistant','166-555-0162','1979-06-02 00:00:00',161,217)

,('BUED10002','E127','Zheng','Mu','zheng0@buniq.com','sales assistant','113-555-0173','1983-05-26 00:00:00',167,186)

,('BUMA10003','E128','Ivo','Salmre','ivo0@buniq.com','sales assistant','115-555-0179','1981-08-03 00:00:00',158,277)

,('BUBI10004','E129','Paul','Komosinski','paul0@buniq.com','sales assistant','147-555-0160','1980-06-13 00:00:00',164,156)

,('BULE10005','E130','Ashvini','Sharma','ashvini0@buniq.com','sales assistant','656-555-0119','1976-10-25 00:00:00',165,247)

,('BUGL10001','E131','Kendall','Keil','kendall0@buniq.com','sales assistant','138-555-0128','1985-12-28 00:00:00',161,218)

,('BUED10002','E132','Paula','Barreto de Mattos','paula0@buniq.com','sales assistant','523-555-0175','1975-09-11 00:00:00',167,187)

,('BUMA10003','E133','Alejandro','McGuel','alejandro0@buniq.com','sales assistant','668-555-0130','1988-07-05 00:00:00',158,278)

,('BUBI10004','E134','Garrett','Young','garrett0@buniq.com','sales assistant','609-555-0179','1984-03-25 00:00:00',164,157)

,('BULE10005','E135','Jian Shuo','Wang','jianshuo0@buniq.com','sales assistant','952-555-0178','1983-02-24 00:00:00',165,248)

,('BUGL10001','E136','Susan','Eaton','susan0@buniq.com','sales assistant','943-555-0196','1977-09-17 00:00:00',161,219)

,('BUED10002','E137','Vamsi','Kuppa','vamsi0@buniq.com','sales assistant','937-555-0137','1976-10-16 00:00:00',167,188)

,('BUMA10003','E138','Alice','Ciccu','alice0@buniq.com','sales assistant','333-555-0173','1977-08-26 00:00:00',158,279)

,('BUBI10004','E139','Simon','Rapier','simon0@buniq.com','sales assistant','963-555-0134','1989-12-15 00:00:00',164,158)

,('BULE10005','E140','Jinghao','Liu','jinghao0@buniq.com','sales assistant','794-555-0159','1988-09-05 00:00:00',165,249)

,('BUGL10001','E141','Michael','Hines','michael0@buniq.com','sales assistant','218-555-0126','1989-12-15 00:00:00',161,220)

,('BUED10002','E142','Yvonne','McKay','yvonne0@buniq.com','sales assistant','286-555-0189','1988-11-13 00:00:00',167,189)

,('BUMA10003','E143','Peng','Wu','peng0@buniq.com','sales assistant','164-555-0164','1975-10-17 00:00:00',158,280)

,('BUBI10004','E144','Jean','Trenary','jean0@buniq.com','sales assistant','685-555-0120','1975-07-13 00:00:00',164,159)

,('BULE10005','E145','Russell','Hunter','russell0@buniq.com','sales assistant','786-555-0144','1972-06-25 00:00:00',165,250)

,('BUGL10001','E146','A. Scott','Wright','ascott0@buniq.com','sales assistant','992-555-0194','1968-04-17 00:00:00',161,221)

,('BUED10002','E147','Fred','Northup','fred0@buniq.com','sales assistant','818-555-0192','1989-01-23 00:00:00',167,190)

,('BUMA10003','E148','Sariya','Harnpadoungsataya','sariya0@buniq.com','sales assistant','399-555-0176','1986-12-19 00:00:00',158,281)

,('BUBI10004','E149','Willis','Johnson','willis0@buniq.com','sales assistant','778-555-0141','1978-02-15 00:00:00',164,160)

,('BULE10005','E150','Jun','Cao','jun0@buniq.com','sales assistant','299-555-0113','1979-02-03 00:00:00',165,251)

,('BUGL10001','E151','Christian','Kleinerman','christian0@buniq.com','sales assistant','846-555-0157','1975-08-18 00:00:00',161,222)

,('BUED10002','E152','Susan','Metters','susan1@buniq.com','sales assistant','639-555-0164','1982-10-31 00:00:00',167,191)

,('BUMA10003','E153','Reuben','D''sa','reuben0@buniq.com','sales assistant','191-555-0112','1987-03-27 00:00:00',158,282)

,('BUBI10004','E154','Kirk','Koenigsbauer','kirk0@buniq.com','sales assistant','669-555-0150','1984-09-06 00:00:00',164,161)

,('BULE10005','E155','David','Ortiz','david2@buniq.com','sales assistant','712-555-0119','1984-07-29 00:00:00',165,252)

,('BUGL10001','E156','Tengiz','Kharatishvili','tengiz0@buniq.com','sales assistant','910-555-0116','1989-11-26 00:00:00',161,223)

,('BUED10002','E157','Hanying','Feng','hanying0@buniq.com','sales assistant','319-555-0139','1974-05-16 00:00:00',167,192)

,('BUMA10003','E158','Kevin','Liu','kevin1@buniq.com','sales manager','714-555-0138','1985-07-25 00:00:00',100,283)

,('BUBI10004','E159','Annik','Stahl','annik0@buniq.com','sales assistant','499-555-0125','1976-07-26 00:00:00',164,162)

,('BULE10005','E160','Suroor','Fatima','suroor0@buniq.com','sales assistant','932-555-0161','1977-09-25 00:00:00',165,253)

,('BUGL10001','E161','Deborah','Poe','deborah0@buniq.com','sales manager','602-555-0194','1975-10-05 00:00:00',100,224)

,('BUED10002','E162','Jim','Scardelis','jim0@buniq.com','sales assistant','679-555-0113','1986-04-08 00:00:00',167,193)

,('BUMA10003','E163','Carole','Poland','carole0@buniq.com','Logistic Personnel','688-555-0192','1983-05-19 00:00:00',198,284)

,('BUBI10004','E164','George','Li','george0@buniq.com','sales manager','518-555-0199','1976-11-14 00:00:00',100,163)

,('BULE10005','E165','Gary','Yukish','gary0@buniq.com','sales manager','901-555-0125','1987-12-15 00:00:00',100,254)

,('BUGL10001','E166','Cristian','Petculescu','cristian0@buniq.com','Logistic Personnel','434-555-0133','1983-11-10 00:00:00',201,225)

,('BUED10002','E167','Raymond','Sam','raymond0@buniq.com','sales manager','226-555-0197','1966-09-30 00:00:00',100,194)

,('BUMA10003','E168','Janaina','Bueno','janaina0@buniq.com','Logistic Personnel','623-555-0155','1984-08-30 00:00:00',198,285)

,('BUBI10004','E169','Bob','Hohman','bob0@buniq.com','Logistic Personnel','611-555-0116','1979-03-16 00:00:00',204,164)

,('BULE10005','E170','Shammi','Mohamed','shammi0@buniq.com','Logistic Personnel','793-555-0179','1980-05-04 00:00:00',205,255)

,('BUGL10001','E171','Linda','Moschell','linda0@buniq.com','Logistic Personnel','612-555-0171','1987-02-14 00:00:00',201,226)

,('BUED10002','E172','Mindy','Martin','mindy0@buniq.com','Logistic Personnel','522-555-0147','1984-06-20 00:00:00',207,195)

,('BUMA10003','E173','Wendy','Kahn','wendy0@buniq.com','Logistic Personnel','248-555-0134','1984-05-11 00:00:00',198,286)

,('BUBI10004','E174','Kim','Ralls','kim0@buniq.com','Logistic Personnel','309-555-0129','1983-11-29 00:00:00',204,165)

,('BULE10005','E175','Sandra','Reátegui Alayo','sandra0@buniq.com','Logistic Personnel','896-555-0168','1975-06-05 00:00:00',205,256)

,('BUGL10001','E176','Kok-Ho','Loh','kok-ho0@buniq.com','Logistic Personnel','999-555-0155','1979-11-27 00:00:00',201,227)

,('BUED10002','E177','Douglas','Hite','douglas0@buniq.com','Logistic Personnel','808-555-0172','1985-06-24 00:00:00',207,196)

,('BUMA10003','E178','James','Kramer','james0@buniq.com','Logistic Personnel','119-555-0117','1984-02-23 00:00:00',198,287)

,('BUBI10004','E179','Sean','Alexander','sean0@buniq.com','Logistic Personnel','420-555-0173','1975-10-05 00:00:00',204,166)

,('BULE10005','E180','Nitin','Mirchandani','nitin0@buniq.com','Logistic Personnel','143-555-0173','1986-07-01 00:00:00',205,257)

,('BUGL10001','E181','Diane','Margheim','diane1@buniq.com','Logistic Personnel','815-555-0138','1986-01-03 00:00:00',201,228)

,('BUED10002','E182','Rebecca','Laszlo','rebecca0@buniq.com','Logistic Personnel','314-555-0113','1988-02-04 00:00:00',207,197)

,('BUMA10003','E183','Rajesh','Patel','rajesh0@buniq.com','Logistic Personnel','373-555-0137','1977-05-04 00:00:00',198,288)

,('BUBI10004','E184','Vidur','Luthra','vidur0@buniq.com','Logistic Personnel','153-555-0186','1984-03-01 00:00:00',204,167)

,('BULE10005','E185','John','Evans','john1@buniq.com','Logistic Personnel','172-555-0130','1977-12-29 00:00:00',205,258)

,('BUGL10001','E186','Nancy','Anderson','nancy0@buniq.com','Logistic Personnel','970-555-0118','1988-06-19 00:00:00',201,229)

,('BUED10002','E187','Pilar','Ackerman','pilar0@buniq.com','Logistic Personnel','577-555-0185','1972-04-09 00:00:00',207,198)

,('BUMA10003','E188','David','Yalovsky','david3@buniq.com','Logistic Personnel','373-555-0142','1981-03-03 00:00:00',198,289)

,('BUBI10004','E189','David','Hamilton','david4@buniq.com','Logistic Personnel','986-555-0177','1983-01-30 00:00:00',204,168)

,('BULE10005','E190','Laura','Steele','laura0@buniq.com','Logistic Personnel','777-555-0141','1980-07-25 00:00:00',205,259)

,('BUGL10001','E191','Margie','Shoop','margie0@buniq.com','Logistic Personnel','818-555-0128','1985-12-18 00:00:00',201,230)

,('BUED10002','E192','Zainal','Arifin','zainal0@buniq.com','Logistic Personnel','204-555-0115','1975-08-30 00:00:00',207,199)

,('BUMA10003','E193','Lorraine','Nay','lorraine0@buniq.com','Logistic Personnel','845-555-0184','1988-06-26 00:00:00',198,290)

,('BUBI10004','E194','Fadi','Fakhouri','fadi0@buniq.com','Logistic Personnel','935-555-0116','1988-09-15 00:00:00',204,169)

,('BULE10005','E195','Ryan','Cornelsen','ryan0@buniq.com','Logistic Personnel','208-555-0114','1972-01-12 00:00:00',205,260)

,('BUGL10001','E196','Candy','Spoon','candy0@buniq.com','Logistic Personnel','920-555-0177','1975-09-23 00:00:00',201,231)

,('BUED10002','E197','Nuan','Yu','nuan0@buniq.com','Logistic Personnel','913-555-0184','1978-10-27 00:00:00',207,200)

,('BUMA10003','E198','William','Vong','william0@buniq.com','Logistic Manager','148-555-0145','1981-06-06 00:00:00',198,291)

,('BUBI10004','E199','William','Vong','william0@buniq.com','Logistic Personnel','148-555-0145','1981-06-06 00:00:00',204,170)

,('BULE10005','E200','Bjorn','Rettig','bjorn0@buniq.com','Logistic Personnel','199-555-0117','1989-06-06 00:00:00',205,261)

,('BUGL10001','E201','Scott','Gode','scott0@buniq.com','Logistic Manager','391-555-0138','1986-09-10 00:00:00',100,232)

,('BUED10002','E202','Michael','Rothkugel','michael1@buniq.com','Logistic Personnel','454-555-0119','1990-08-04 00:00:00',207,201)

,('BUMA10003','E203','Lane','Sacksteder','lane0@buniq.com','IT Admin','200-555-0117','1974-04-23 00:00:00',100,292)

,('BUBI10004','E204','Pete','Male','pete0@buniq.com','Logistic Manager','768-555-0123','1976-09-03 00:00:00',100,171)

,('BULE10005','E205','Dan','Bacon','dan0@buniq.com','Logistic Manager','166-555-0159','1981-01-24 00:00:00',100,262)

,('BUGL10001','E206','David','Barber','david5@buniq.com','IT Admin','477-555-0132','1964-01-20 00:00:00',246,233)

,('BUED10002','E207','Lolan','Song','lolan0@buniq.com','Logistic Manager','582-555-0178','1972-08-24 00:00:00',100,202)

,('BUMA10003','E208','Paula','Nartker','paula1@buniq.com','IT Admin','476-555-0119','1986-09-10 00:00:00',248,293)

,('BUBI10004','E209','Mary','Gibson','mary0@buniq.com','IT Admin','531-555-0183','1962-04-13 00:00:00',249,172)

,('BULE10005','E210','Mindaugas','Krapauskas','mindaugas0@buniq.com','IT Admin','637-555-0120','1977-12-05 00:00:00',250,263)

,('BUGL10001','E211','Eric','Gubbels','eric0@buniq.com','IT Admin','260-555-0119','1984-08-19 00:00:00',246,234)

,('BUED10002','E212','Ken','Sánchez','ken0@buniq.com','IT Admin','697-555-0142','1968-08-29 00:00:00',247,203)

,('BUMA10003','E213','Jason','Watters','jason0@buniq.com','IT Admin','571-555-0179','1988-07-07 00:00:00',248,294)

,('BUBI10004','E214','Mark','Harrington','mark0@buniq.com','IT Admin','147-555-0179','1985-11-28 00:00:00',249,173)

,('BULE10005','E215','Janeth','Esteves','janeth0@buniq.com','IT Admin','540-555-0191','1972-02-22 00:00:00',250,264)

,('BUGL10001','E216','Marc','Ingle','marc0@buniq.com','IT Admin','234-555-0169','1986-05-24 00:00:00',246,235)

,('BUED10002','E217','Gigi','Matthew','gigi0@buniq.com','IT Admin','185-555-0186','1978-08-21 00:00:00',247,204)

,('BUMA10003','E218','Paul','Singh','paul1@buniq.com','IT Admin','727-555-0112','1990-06-04 00:00:00',248,295)

,('BUBI10004','E219','Frank','Lee','frank0@buniq.com','IT Admin','158-555-0191','1987-04-06 00:00:00',249,174)

,('BULE10005','E220','François','Ajenstat','françois0@buniq.com','IT Admin','785-555-0110','1980-06-13 00:00:00',250,265)

,('BUGL10001','E221','Diane','Tibbott','diane2@buniq.com','IT Admin','361-555-0180','1989-03-09 00:00:00',246,236)

,('BUED10002','E222','Jill','Williams','jill0@buniq.com','IT Admin','510-555-0121','1979-01-16 00:00:00',247,205)

,('BUMA10003','E223','Angela','Barbariol','angela0@buniq.com','IT Admin','150-555-0194','1990-12-29 00:00:00',248,296)

,('BUBI10004','E224','Matthias','Berndt','matthias0@buniq.com','IT Admin','139-555-0120','1973-06-11 00:00:00',249,175)

,('BULE10005','E225','Bryan','Baker','bryan0@buniq.com','IT Admin','712-555-0113','1973-03-27 00:00:00',250,266)

,('BUGL10001','E226','Jeff','Hay','jeff0@buniq.com','IT Admin','350-555-0167','1976-08-15 00:00:00',246,237)

,('BUED10002','E227','Eugene','Zabokritski','eugene0@buniq.com','IT Admin','241-555-0191','1987-02-12 00:00:00',247,206)

,('BUMA10003','E228','Barbara','Decker','barbara0@buniq.com','IT Admin','119-555-0192','1984-07-29 00:00:00',248,297)

,('BUBI10004','E229','Chris','Preston','chris0@buniq.com','IT Admin','200-555-0112','1988-07-16 00:00:00',249,176)

,('BULE10005','E230','Sean','Chai','sean1@buniq.com','IT Admin','205-555-0132','1986-10-10 00:00:00',250,267)

,('BUGL10001','E231','Dan','Wilson','dan1@buniq.com','IT Admin','653-555-0144','1975-08-06 00:00:00',246,238)

,('BUED10002','E232','Mark','McArthur','mark1@buniq.com','IT Admin','417-555-0154','1979-04-25 00:00:00',247,207)

,('BUMA10003','E233','Bryan','Walton','bryan1@buniq.com','IT Admin','935-555-0199','1984-04-20 00:00:00',248,298)

,('BUBI10004','E234','Houman','Pournasseh','houman0@buniq.com','IT Admin','180-555-0136','1971-03-30 00:00:00',249,177)

,('BULE10005','E235','Sairaj','Uddin','sairaj0@buniq.com','IT Admin','500-555-0159','1987-07-22 00:00:00',250,268)

,('BUGL10001','E236','Michiko','Osada','michiko0@buniq.com','IT Admin','984-555-0148','1982-01-25 00:00:00',246,239)

,('BUED10002','E237','Benjamin','Martin','benjamin0@buniq.com','IT Admin','533-555-0111','1985-08-05 00:00:00',247,208)

,('BUMA10003','E238','Cynthia','Randall','cynthia0@buniq.com','IT Admin','352-555-0138','1981-03-18 00:00:00',248,299)

,('BUBI10004','E239','Kathie','Flood','kathie0@buniq.com','IT Admin','446-555-0118','1990-06-01 00:00:00',249,178)

,('BULE10005','E240','Britta','Simon','britta0@buniq.com','IT Admin','955-555-0169','1989-04-28 00:00:00',250,269)

,('BUGL10001','E241','Brian','Lloyd','brian0@buniq.com','IT Admin','110-555-0182','1976-09-10 00:00:00',246,240)

,('BUED10002','E242','David','Liu','david6@buniq.com','IT Admin','646-555-0185','1983-02-05 00:00:00',247,209)

,('BUMA10003','E243','Laura','Norman','laura1@buniq.com','IT Manager','615-555-0110','1975-08-06 00:00:00',100,300)

,('BUBI10004','E244','Laura','Li','laura2@buniq.com','IT Admin','615-555-0110','1975-08-06 00:00:00',249,179)

,('BULE10005','E245','Michael','Patten','michael2@buniq.com','IT Admin','441-555-0195','1973-12-01 00:00:00',250,270)

,('BUGL10001','E246','Andy','Ruth','andy0@buniq.com','IT Manager','118-555-0110','1983-05-20 00:00:00',100,241)

,('BUED10002','E247','Yuhong','Li','yuhong0@buniq.com','IT Manager','965-555-0155','1976-11-04 00:00:00',100,210)

,('BUMA10003','E248','Robert','Rounthwaite','robert0@buniq.com','IT Admin','589-555-0147','1984-09-28 00:00:00',248,301)

,('BUBI10004','E249','Andreas','Berglund','andreas0@buniq.com','IT Manager','181-555-0124','1988-10-26 00:00:00',100,180)

,('BULE10005','E250','Reed','Koch','reed0@buniq.com','IT Manager','678-555-0110','1988-08-08 00:00:00',100,271);
Drop table if exists suppliers;
CREATE TABLE if not exists suppliers (
 
    supplier_ID VARCHAR(10) PRIMARY KEY,

    supplier_name VARCHAR(50), 

    email VARCHAR(50), 

    phone_number VARCHAR(20), 

    address VARCHAR(100)
 
);
 
 
INSERT INTO suppliers (supplier_ID, supplier_name, email, phone_number, address) VALUES
 
('BUGL10001', 'Boston Networks ltd', 'b.network@gmail.com', '07792946841', 'Queen Elizabeth Avenue Hillington Park Glasgow, G52 4NQ United Kingdom'),
 
('BUED10002', 'BM Solutions', 'bmsolutions@outlook.com', '07963142435', '11 Ellersly Road, Edinburgh, EH12 6HY United Kingdom'),
 
('BUFI10003', 'Drive Vintage', 'delivery@drivevintage.com', '07825577977', '16 Cromarty Campus Rosyth, Fife, KY11 2WX United Kingdom'),
 
('BUCO10004', 'Terry Debnam', 'terrydeb1967@hotmail.co.uk', '07801963087', 'Greengates Farm, Shop Lane, Colchester, CO5 8TR United Kingdom'),
 
('BULN10005', 'Running Imp International Sports Limited', 'runningsports@hotmail.com', '07905769093', '11-13 Whisby Way Lincoln LN6 3LQ United Kingdom'),
 
('BUYO10006', 'D.R. Baling Wire Manufacturers Ltd', 'DRBwire@yahoo.co.uk', '07207675471', 'Oxspring Penistone Sheffield, South Yorks, S36 8YW United Kingdom'),
 
('BUWE10007', 'Pushkin Home & Interior', 'olga.pushkina@ymail.com', '07595595079', '64 High Street, Tunbridge Wells, TN1 1YB United Kingdom'),
 
('BUBU10008', 'wharfedale heating & boiler services Ltd', 'will@wharfedaleheating.com', '07213554225', 'Hiver Cottage, Harrogate, Burnt Yates, HG3 3EG United Kingdom'),
 
('BULE10009', 'Pendle Sportswear', 'sales@pendel.org.uk', '07823410101', '2-4 Towngate, Leyland, PR25 2FN United Kingdom'),
 
('BUBL10010', 'Value Rug Company Limited', 'value-rug-co@virginmedia.com', '07968846932', '20 Princeway, Blackpool, FY4 2DQ United Kingdom');
 

DROP TABLE IF EXISTS payment;

CREATE TABLE IF NOT EXISTS payment(

   payment_ID     VARCHAR(7) NOT NULL PRIMARY KEY

  ,payment_status VARCHAR(9) NOT NULL

  ,invoice_ID     VARCHAR(7) NOT NULL

);

INSERT INTO payment(payment_ID,payment_status,invoice_ID) VALUES

('PAY-001','Completed','INV-001')

,('PAY-002','Completed','INV-002')

,('PAY-003','Completed','INV-003')

,('PAY-004','Refund','INV-004')

,('PAY-005','Completed','INV-005')

,('PAY-006','Completed','INV-006')

,('PAY-007','Completed','INV-007')

,('PAY-008','Completed','INV-008')

,('PAY-009','Completed','INV-009')

,('PAY-010','Completed','INV-010')

,('PAY-011','Completed','INV-011')

,('PAY-012','Returns','INV-012')

,('PAY-013','Completed','INV-013')

,('PAY-014','Completed','INV-014')

,('PAY-015','Completed','INV-015')

,('PAY-016','Completed','INV-016')

,('PAY-017','Completed','INV-017')

,('PAY-018','Completed','INV-018')

,('PAY-019','Completed','INV-019')

,('PAY-020','Completed','INV-020')

,('PAY-021','Completed','INV-021')

,('PAY-022','Completed','INV-022')

,('PAY-023','Completed','INV-023')

,('PAY-024','Completed','INV-024')

,('PAY-025','Completed','INV-025')

,('PAY-026','Completed','INV-026')

,('PAY-027','Completed','INV-027')

,('PAY-028','Returns','INV-028')

,('PAY-029','Returns','INV-029')

,('PAY-030','Completed','INV-030')

,('PAY-031','Completed','INV-031')

,('PAY-032','Completed','INV-032')

,('PAY-033','Completed','INV-033')

,('PAY-034','Completed','INV-034')

,('PAY-035','Completed','INV-035')

,('PAY-036','Completed','INV-036')

,('PAY-037','Completed','INV-037')

,('PAY-038','Completed','INV-038')

,('PAY-039','Completed','INV-039')

,('PAY-040','Completed','INV-040')

,('PAY-041','Completed','INV-041')

,('PAY-042','Completed','INV-042')

,('PAY-043','Completed','INV-043')

,('PAY-044','Returns','INV-044')

,('PAY-045','Completed','INV-045')

,('PAY-046','Completed','INV-046')

,('PAY-047','Refund','INV-047')

,('PAY-048','Completed','INV-048')

,('PAY-049','Completed','INV-049')

,('PAY-050','Completed','INV-050')

,('PAY-051','Completed','INV-051')

,('PAY-052','Completed','INV-052')

,('PAY-053','Completed','INV-053')

,('PAY-054','Completed','INV-054')

,('PAY-055','Completed','INV-055')

,('PAY-056','Completed','INV-056')

,('PAY-057','Completed','INV-057')

,('PAY-058','Completed','INV-058')

,('PAY-059','Completed','INV-059')

,('PAY-060','Completed','INV-060')

,('PAY-061','Completed','INV-061')

,('PAY-062','Completed','INV-062')

,('PAY-063','Completed','INV-063')

,('PAY-064','Completed','INV-064')

,('PAY-065','Completed','INV-065')

,('PAY-066','Completed','INV-066')

,('PAY-067','Completed','INV-067')

,('PAY-068','Completed','INV-068')

,('PAY-069','Completed','INV-069')

,('PAY-070','Completed','INV-070')

,('PAY-071','Completed','INV-071')

,('PAY-072','Completed','INV-072')

,('PAY-073','Returns','INV-073')

,('PAY-074','Completed','INV-074')

,('PAY-075','Completed','INV-075')

,('PAY-076','Completed','INV-076')

,('PAY-077','Returns','INV-077')

,('PAY-078','Completed','INV-078')

,('PAY-079','Completed','INV-079')

,('PAY-080','Completed','INV-080')

,('PAY-081','Refund','INV-081')

,('PAY-082','Completed','INV-082')

,('PAY-083','Completed','INV-083')

,('PAY-084','Completed','INV-084')

,('PAY-085','Completed','INV-085')

,('PAY-086','Completed','INV-086')

,('PAY-087','Completed','INV-087')

,('PAY-088','Completed','INV-088')

,('PAY-089','Completed','INV-089')

,('PAY-090','Completed','INV-090')

,('PAY-091','Completed','INV-091')

,('PAY-092','Completed','INV-092')

,('PAY-093','Completed','INV-093')

,('PAY-094','Completed','INV-094')

,('PAY-095','Completed','INV-095')

,('PAY-096','Completed','INV-096')

,('PAY-097','Completed','INV-097')

,('PAY-098','Completed','INV-098')

,('PAY-099','Completed','INV-099')

,('PAY-100','Returns','INV-100')

,('PAY-101','Completed','INV-101')

,('PAY-102','Completed','INV-102')

,('PAY-103','Returns','INV-103')

,('PAY-104','Completed','INV-104')

,('PAY-105','Returns','INV-105')

,('PAY-106','Completed','INV-106')

,('PAY-107','Completed','INV-107')

,('PAY-108','Refund','INV-108')

,('PAY-109','Completed','INV-109')

,('PAY-110','Completed','INV-110')

,('PAY-111','Completed','INV-111')

,('PAY-112','Completed','INV-112')

,('PAY-113','Completed','INV-113')

,('PAY-114','Completed','INV-114')

,('PAY-115','Completed','INV-115')

,('PAY-116','Completed','INV-116')

,('PAY-117','Completed','INV-117')

,('PAY-118','Completed','INV-118')

,('PAY-119','Completed','INV-119')

,('PAY-120','Refund','INV-120')

,('PAY-121','Completed','INV-121')

,('PAY-122','Completed','INV-122')

,('PAY-123','Completed','INV-123')

,('PAY-124','Completed','INV-124')

,('PAY-125','Completed','INV-125')

,('PAY-126','Completed','INV-126')

,('PAY-127','Returns','INV-127')

,('PAY-128','Completed','INV-128')

,('PAY-129','Completed','INV-129')

,('PAY-130','Completed','INV-130')

,('PAY-131','Completed','INV-131')

,('PAY-132','Returns','INV-132')

,('PAY-133','Completed','INV-133')

,('PAY-134','Completed','INV-134')

,('PAY-135','Completed','INV-135')

,('PAY-136','Refund','INV-136')

,('PAY-137','Completed','INV-137')

,('PAY-138','Completed','INV-138')

,('PAY-139','Completed','INV-139')

,('PAY-140','Completed','INV-140')

,('PAY-141','Completed','INV-141')

,('PAY-142','Completed','INV-142')

,('PAY-143','Completed','INV-143')

,('PAY-144','Completed','INV-144')

,('PAY-145','Completed','INV-145')

,('PAY-146','Completed','INV-146')

,('PAY-147','Refund','INV-147')

,('PAY-148','Completed','INV-148')

,('PAY-149','Completed','INV-149')

,('PAY-150','Completed','INV-150');


DROP TABLE IF EXISTS order_;

CREATE TABLE IF NOT EXISTS order_(

   order_ID       VARCHAR(7) NOT NULL

  ,order_Date     VARCHAR(10)

  ,orderStatus    VARCHAR(9)

  ,delivery_ID    VARCHAR(12)

  ,customer_ID    VARCHAR(7)

  ,payment_method VARCHAR(11)

  ,product_ID     VARCHAR(9)

  ,price          NUMERIC(8,2) NOT NULL

  ,return_ID      VARCHAR(7)

);

INSERT INTO order_(order_ID,order_Date,orderStatus,delivery_ID,customer_ID,payment_method,product_ID,price,return_ID) VALUES

('I138884','10/30/2016','Completed','SHP555666777','C241288','Credit Card','BoxBox003',38.88,NULL)

,('I138884','10/30/2016','Completed','SHP555666777','C241288','Credit Card','BadBad006',30,NULL)

,('I138884','10/30/2016','Completed','SHP555666777','C241288','Credit Card','BoxBox005',45.6,NULL)

,('I138884','10/30/2016','Completed','SHP555666777','C241288','Credit Card','FagFag005',93.6,NULL)

,('I138884','10/30/2016','Completed','SHP555666777','C241288','Credit Card','CycCyc021',95.04,NULL)

,('I317333','10/31/2016','Completed','TRK666777888','C111565','Debit Card','BadBad008',35,NULL)

,('I127801','11/01/2016','Completed','PKG222333444','C266599','Cash','RcyRcy011',15,NULL)

,('I127801','11/01/2016','Completed','PKG222333444','C266599','Cash','BadBad002',20,NULL)

,('I173702','11/02/2016','Cancelled','EXP777888999','C988172','Credit Card','TatTat012',52.8,NULL)

,('I337046','11/03/2016','Completed','ORD555666777','C189076','Cash','TrnTrn008',74.52,NULL)

,('I337046','11/03/2016','Completed','ORD555666777','C189076','Cash','CycCyc004',66,NULL)

,('I227836','11/04/2016','Completed','CNM111222333','C657758','Credit Card','BadBad001',25,NULL)

,('I227836','11/04/2016','Completed','CNM111222333','C657758','Credit Card','BadBad006',30,NULL)

,('I227836','11/04/2016','Completed','CNM111222333','C657758','Credit Card','KykKyk004',118.8,NULL)

,('I121056','11/05/2016','Completed','SHP444555666','C151197','Cash','BasBas006',28.8,NULL)

,('I121056','11/05/2016','Completed','SHP444555666','C151197','Cash','TenTen005',68.64,NULL)

,('I121056','11/05/2016','Completed','SHP444555666','C151197','Cash','TatTat005',48.84,NULL)

,('I121056','11/05/2016','Completed','SHP444555666','C151197','Cash','BadBad012',19.2,NULL)

,('I293112','11/06/2016','Completed','TRK333555666','C176086','Credit Card','BktBkt006',42.24,NULL)

,('I293112','11/06/2016','Completed','TRK333555666','C176086','Credit Card','TrkTrk003',90,NULL)

,('I138884','11/07/2016','Completed','TRK333555666','C176086','Credit Card','BoxBox003',38.88,NULL)

,('I293112','11/08/2016','Completed','TRK333555666','C176086','Credit Card','BoxBox014',56.4,NULL)

,('I293112','11/08/2016','Completed','TRK333555666','C176086','Credit Card','CycCyc004',66,NULL)

,('I293455','11/09/2016','Completed','PKG777888999','C159642','Credit Card','RcyRcy004',15,NULL)

,('I293455','11/09/2016','Completed','PKG777888999','C159642','Credit Card','TatTat001',43.56,NULL)

,('I326945','11/10/2016','Completed','EXP111222333','C283361','Credit Card','BoxBox014',56.4,NULL)

,('I326945','11/10/2016','Completed','EXP111222333','C283361','Credit Card','CycCyc018',82.8,NULL)

,('I306368','11/11/2016','Completed','ORD666555444','C240286','Cash','BoxBox007',48,NULL)

,('I306368','11/11/2016','Completed','ORD666555444','C240286','Cash','SwmSwm008',38.4,NULL)

,('I306368','11/11/2016','Completed','ORD666555444','C240286','Cash','CycCyc008',70.8,NULL)

,('I139207','11/12/2016','Returns','CNM444555666','C191708','Credit Card','BadBad007',36,'AS99790')

,('I139207','11/12/2016','Returns','CNM444555666','C191708','Credit Card','TrnTrn001',74.4,'AS99790')

,('I139207','11/12/2016','Returns','CNM444555666','C191708','Credit Card','CycCyc012',83.16,'AS99790')

,('I139207','11/12/2016','Returns','CNM444555666','C191708','Credit Card','TrnTrn002',75.6,'AS99790')

,('I139207','11/12/2016','Returns','CNM444555666','C191708','Credit Card','BadBad009',33,'AS99790')

,('I640508','11/13/2016','Completed','SHP666777888','C225330','Debit Card','TatTat009',44.28,NULL)

,('I640508','11/13/2016','Completed','SHP666777888','C225330','Debit Card','FagFag013',103.2,NULL)

,('I640508','11/13/2016','Completed','SHP666777888','C225330','Debit Card','FooFoo001',116.16,NULL)

,('I640508','11/13/2016','Completed','SHP666777888','C225330','Debit Card','FagFag011',90.72,NULL)

,('I179802','11/14/2016','Completed','TRK222333444','C312861','Cash','BadBad001',25,NULL)

,('I179802','11/14/2016','Completed','TRK222333444','C312861','Cash','BoxBox006',46.8,NULL)

,('I179802','11/14/2016','Completed','TRK222333444','C312861','Cash','RcyRcy010',15,NULL)

,('I179802','11/14/2016','Completed','TRK222333444','C312861','Cash','FagFag006',104.28,NULL)

,('I179802','11/14/2016','Completed','TRK222333444','C312861','Cash','TrkTrk004',91.2,NULL)

,('I336189','11/15/2016','Completed','PKG888999000','C555402','Credit Card','RcyRcy002',15,NULL)

,('I336189','11/15/2016','Completed','PKG888999000','C555402','Credit Card','TenTen012',70.8,NULL)

,('I336189','11/15/2016','Completed','PKG888999000','C555402','Credit Card','RcyRcy005',15,NULL)

,('I336189','11/15/2016','Completed','PKG888999000','C555402','Credit Card','TenTen003',54,NULL)

,('I336189','11/15/2016','Completed','PKG888999000','C555402','Credit Card','FooFoo004',109.2,NULL)

,('I688768','11/16/2016','Completed','EXP333444555','C362288','Credit Card','FagFag008',106.92,NULL)

,('I688768','11/16/2016','Completed','EXP333444555','C362288','Credit Card','BoxBox005',45.6,NULL)

,('I688768','11/16/2016','Completed','EXP333444555','C362288','Credit Card','CycCyc015',71.28,NULL)

,('I688768','11/16/2016','Completed','EXP333444555','C362288','Credit Card','BadBad014',23.76,NULL)

,('I688768','11/16/2016','Completed','EXP333444555','C362288','Credit Card','RcyRcy014',15.12,NULL)

,('I294687','11/17/2016','Completed','ORD777888999','C300786','Debit Card','BasBas007',33,NULL)

,('I294687','11/17/2016','Completed','ORD777888999','C300786','Debit Card','BoxBox016',58.8,NULL)

,('I294687','11/17/2016','Completed','ORD777888999','C300786','Debit Card','BoxBox012',48.6,NULL)

,('I294687','11/17/2016','Completed','ORD777888999','C300786','Debit Card','CycCyc005',67.2,NULL)

,('I294687','11/17/2016','Completed','ORD777888999','C300786','Debit Card','FagFag007',105.6,NULL)

,('I195744','11/18/2016','Completed','CNM666555444','C330667','Credit Card','BasBas008',34.32,NULL)

,('I993048','11/19/2016','Completed','SHP888999000','C218149','Cash','BadBad013',22.44,NULL)

,('I993048','11/19/2016','Completed','SHP888999000','C218149','Cash','BadBad006',30,NULL)

,('I993048','11/19/2016','Completed','SHP888999000','C218149','Cash','SwmSwm005',34.8,NULL)

,('I993048','11/19/2016','Completed','SHP888999000','C218149','Cash','FooFoo001',116.16,NULL)

,('I992454','11/20/2016','Completed','TRK444555666','C196845','Cash','SwmSwm003',32.4,NULL)

,('I183746','11/21/2016','Completed','PKG555666777','C220180','Credit Card','TatTat006',50.16,NULL)

,('I183746','11/21/2016','Completed','PKG555666777','C220180','Credit Card','TenTen007',58.32,NULL)

,('I183746','11/21/2016','Completed','PKG555666777','C220180','Credit Card','CycCyc009',72,NULL)

,('I183746','11/21/2016','Completed','PKG555666777','C220180','Credit Card','BasBas004',26.4,NULL)

,('I412481','11/22/2016','Completed','EXP444333222','C125696','Cash','BadBad003',15,NULL)

,('I412481','11/22/2016','Completed','EXP444333222','C125696','Cash','BoxBox002',42,NULL)

,('I412481','11/22/2016','Completed','EXP444333222','C125696','Cash','FooFoo008',125.4,NULL)

,('I823067','11/23/2016','Completed','ORD333444555','C322947','Credit Card','BasBas005',27.6,NULL)

,('I252275','11/24/2016','Completed','CNM555444333','C313348','Cash','KykKyk001',115.2,NULL)

,('I252275','11/24/2016','Completed','CNM555444333','C313348','Cash','SwmSwm007',37.2,NULL)

,('I252275','11/24/2016','Completed','CNM555444333','C313348','Cash','RcyRcy015',16.2,NULL)

,('I252275','11/24/2016','Completed','CNM555444333','C313348','Cash','TenTen014',80.52,NULL)

,('I252275','11/24/2016','Completed','CNM555444333','C313348','Cash','BoxBox018',67.32,NULL)

,('I174250','11/25/2016','Completed','SHP555444333','C204553','Cash','TenTen009',60.48,NULL)

,('I174250','11/25/2016','Completed','SHP555444333','C204553','Cash','TenTen010',68.4,NULL)

,('I174250','11/25/2016','Completed','SHP555444333','C204553','Cash','FagFag004',92.4,NULL)

,('I174250','11/25/2016','Completed','SHP555444333','C204553','Cash','CycCyc019',84,NULL)

,('I195396','11/26/2016','Completed','TRK777666555','C285161','Debit Card','CycCyc013',84.48,NULL)

,('I195396','11/26/2016','Completed','TRK777666555','C285161','Debit Card','BadBad008',35,NULL)

,('I195396','11/26/2016','Completed','TRK777666555','C285161','Debit Card','TatTat005',48.84,NULL)

,('I196704','11/27/2016','Completed','PKG666555444','C289625','Credit Card','TenTen001',63.36,NULL)

,('I196704','11/27/2016','Completed','PKG666555444','C289625','Credit Card','CycCyc020',85.2,NULL)

,('I217053','11/28/2016','Returns','EXP555444333','C192344','Cash','CycCyc012',83.16,'AS86543')

,('I217053','11/28/2016','Returns','EXP555444333','C192344','Cash','FooFoo007',124.08,'AS86543')

,('I217053','11/28/2016','Returns','EXP555444333','C192344','Cash','TenTen001',63.36,'AS86543')

,('I655874','11/29/2016','Returns','ORD777888999','C447138','Cash','BktBkt007',43.56,'AS12345')

,('I655874','11/29/2016','Returns','ORD777888999','C447138','Cash','TatTat003',37.8,'AS12345')

,('I209744','11/30/2016','Completed','CNM111222333','C251229','Credit Card','RcyRcy013',15,NULL)

,('I209744','11/30/2016','Completed','CNM111222333','C251229','Credit Card','CycCyc001',68.64,NULL)

,('I161949','12/01/2016','Completed','SHP444333222','C159164','Debit Card','BoxBox003',38.88,NULL)

,('I161949','12/01/2016','Completed','SHP444333222','C159164','Debit Card','KykKyk002',116.4,NULL)

,('I161949','12/01/2016','Completed','SHP444333222','C159164','Debit Card','TenTen010',68.4,NULL)

,('I161949','12/01/2016','Completed','SHP444333222','C159164','Debit Card','CycCyc011',74.4,NULL)

,('I331891','12/02/2016','Completed','TRK666777888','C501658','Credit Card','CycCyc010',73.2,NULL)

,('I331891','12/02/2016','Completed','TRK666777888','C501658','Credit Card','BasBas003',22.68,NULL)

,('I331891','12/02/2016','Completed','TRK666777888','C501658','Credit Card','BktBkt001',35.64,NULL)

,('I331891','12/02/2016','Completed','TRK666777888','C501658','Credit Card','BoxBox012',48.6,NULL)

,('I768348','12/03/2016','Completed','PKG666555444','C176727','Credit Card','BadBad008',35,NULL)

,('I768348','12/03/2016','Completed','PKG666555444','C176727','Credit Card','CycCyc009',72,NULL)

,('I768348','12/03/2016','Completed','PKG666555444','C176727','Credit Card','BoxBox016',58.8,NULL)

,('I768348','12/03/2016','Completed','PKG666555444','C176727','Credit Card','KykKyk004',118.8,NULL)

,('I109053','12/04/2016','Completed','EXP555666777','C232624','Debit Card','FagFag003',91.2,NULL)

,('I109053','12/04/2016','Completed','EXP555666777','C232624','Debit Card','SwmSwm008',38.4,NULL)

,('I109053','12/04/2016','Completed','EXP555666777','C232624','Debit Card','FooFoo007',124.08,NULL)

,('I167211','12/05/2016','Completed','ORD333444555','C164092','Credit Card','RcyRcy006',15,NULL)

,('I167211','12/05/2016','Completed','ORD333444555','C164092','Credit Card','FooFoo002',106.8,NULL)

,('I167211','12/05/2016','Completed','ORD333444555','C164092','Credit Card','FagFag009',88.56,NULL)

,('I339732','12/06/2016','Completed','CNM555666777','C276887','Credit Card','TenTen006',69.96,NULL)

,('I147062','12/07/2016','Completed','SHP777888999','C245456','Credit Card','BadBad010',20.25,NULL)

,('I147062','12/07/2016','Completed','SHP777888999','C245456','Credit Card','RcyRcy014',15.12,NULL)

,('I147062','12/07/2016','Completed','SHP777888999','C245456','Credit Card','TatTat015',62.04,NULL)

,('I147062','12/07/2016','Completed','SHP777888999','C245456','Credit Card','TenTen012',70.8,NULL)

,('I147062','12/07/2016','Completed','SHP777888999','C245456','Credit Card','TrnTrn001',74.4,NULL)

,('I187519','12/08/2016','Completed','TRK555444333','C450287','Credit Card','FooFoo002',106.8,NULL)

,('I187519','12/08/2016','Completed','TRK555444333','C450287','Credit Card','RcyRcy012',15.84,NULL)

,('I106674','12/09/2016','Completed','PKG333444555','C204279','Cash','TenTen005',68.64,NULL)

,('I473411','12/10/2016','Completed','EXP444333222','C452806','Cash','BoxBox018',67.32,NULL)

,('I473411','12/10/2016','Completed','EXP444333222','C452806','Cash','CycCyc014',85.8,NULL)

,('I473411','12/10/2016','Completed','EXP444333222','C452806','Cash','FagFag008',106.92,NULL)

,('I246550','12/11/2016','Completed','ORD666555444','C716788','Cash','BadBad005',27,NULL)

,('I246550','12/11/2016','Completed','ORD666555444','C716788','Cash','FagFag003',91.2,NULL)

,('I246550','12/11/2016','Completed','ORD666555444','C716788','Cash','TrnTrn006',72.36,NULL)

,('I246550','12/11/2016','Completed','ORD666555444','C716788','Cash','TrnTrn004',85.8,NULL)

,('I138674','12/12/2016','Completed','CNM666777888','C155059','Credit Card','TrkTrk002',88.8,NULL)

,('I138674','12/12/2016','Completed','CNM666777888','C155059','Credit Card','BadBad014',23.76,NULL)

,('I138674','12/12/2016','Completed','CNM666777888','C155059','Credit Card','CycCyc004',66,NULL)

,('I138674','12/12/2016','Completed','CNM666777888','C155059','Credit Card','BasBas002',24,NULL)

,('I138674','12/12/2016','Completed','CNM666777888','C155059','Credit Card','ScdScd002',26.4,NULL)

,('I752693','12/13/2016','Completed','SHP222333444','C306662','Cash','CycCyc020',85.2,NULL)

,('I752693','12/13/2016','Completed','SHP222333444','C306662','Cash','RcyRcy020',26.4,NULL)

,('I752693','12/13/2016','Completed','SHP222333444','C306662','Cash','SwmSwm004',33.6,NULL)

,('I752693','12/13/2016','Completed','SHP222333444','C306662','Cash','BoxBox004',44.4,NULL)

,('I826174','12/14/2016','Returns','TRK777888999','C607615','Cash','TrnTrn003',84.48,'AS67890')

,('I826174','12/14/2016','Returns','TRK777888999','C607615','Cash','BktBkt004',36,'AS67890')

,('I826174','12/14/2016','Returns','TRK777888999','C607615','Cash','BktBkt002',33.6,'AS67890')

,('I826174','12/14/2016','Returns','TRK777888999','C607615','Cash','CycCyc001',68.64,'AS67890')

,('I826174','12/14/2016','Returns','TRK777888999','C607615','Cash','BktBkt004',36,'AS67890')

,('I296025','12/15/2016','Completed','PKG777888999','C120164','Credit Card','FooFoo003',97.2,NULL)

,('I117291','12/16/2016','Completed','EXP555444333','C134449','Credit Card','TrkTrk001',87.6,NULL)

,('I267193','12/17/2016','Cancelled','ORD888999000','C317818','Credit Card','BoxBox005',45.6,NULL)

,('I267193','12/17/2016','Cancelled','ORD888999000','C317818','Credit Card','KykKyk005',15,NULL)

,('I267193','12/17/2016','Cancelled','ORD888999000','C317818','Credit Card','CycCyc009',72,NULL)

,('I205366','12/18/2016','Completed','CNM888999000','C241642','Debit Card','ScdScd003',27.6,NULL)

,('I205366','12/18/2016','Completed','CNM888999000','C241642','Debit Card','YogYog002',93.6,NULL)

,('I269690','12/19/2016','Completed','SHP444555666','C126436','Debit Card','FooFoo008',125.4,NULL)

,('I269690','12/19/2016','Completed','SHP444555666','C126436','Debit Card','BadBad013',22.44,NULL)

,('I269690','12/19/2016','Completed','SHP444555666','C126436','Debit Card','RcyRcy010',15,NULL)

,('I304265','12/20/2016','Completed','TRK333555666','C653385','Debit Card','FagFag006',104.28,NULL)

,('I246562','12/21/2016','Completed','SHP555666777','C227070','Cash','SwmSwm005',34.8,NULL)

,('I202367','12/22/2016','Completed','TRK666777888','C317478','Cash','CycCyc013',84.48,NULL)

,('I202367','12/22/2016','Completed','TRK666777888','C317478','Cash','TatTat014',60.72,NULL)

,('I202367','12/22/2016','Completed','TRK666777888','C317478','Cash','CycCyc006',68.4,NULL)

,('I664787','12/23/2016','Completed','PKG222333444','C237330','Credit Card','TrnTrn007',73.44,NULL)

,('I664787','12/23/2016','Completed','PKG222333444','C237330','Credit Card','BktBkt006',42.24,NULL)

,('I664787','12/23/2016','Completed','PKG222333444','C237330','Credit Card','FagFag003',91.2,NULL)

,('I664787','12/23/2016','Completed','PKG222333444','C237330','Credit Card','YogYog002',93.6,NULL)

,('I664787','12/23/2016','Completed','PKG222333444','C237330','Credit Card','TatTat010',45.36,NULL)

,('I160777','12/24/2016','Completed','EXP777888999','C626042','Cash','CycCyc007',69.6,NULL)

,('I160777','12/24/2016','Completed','EXP777888999','C626042','Cash','TatTat013',54,NULL)

,('I160777','12/24/2016','Completed','EXP777888999','C626042','Cash','BktBkt007',43.56,NULL)

,('I160777','12/24/2016','Completed','EXP777888999','C626042','Cash','BadBad010',20.25,NULL)

,('I137794','12/25/2016','Completed','ORD555666777','C133687','Debit Card','CycCyc002',63.6,NULL)

,('I148377','12/26/2016','Completed','CNM111222333','C841663','Cash','RcyRcy019',25.08,NULL)

,('I148377','12/26/2016','Completed','CNM111222333','C841663','Cash','BasBas002',24,NULL)

,('I148377','12/26/2016','Completed','CNM111222333','C841663','Cash','TrnTrn009',84,NULL)

,('I258195','12/27/2016','Completed','SHP444555666','C213742','Cash','FagFag013',103.2,NULL)

,('I258195','12/27/2016','Completed','SHP444555666','C213742','Cash','BoxBox012',48.6,NULL)

,('I258195','12/27/2016','Completed','SHP444555666','C213742','Cash','BadBad002',20,NULL)

,('I258195','12/27/2016','Completed','SHP444555666','C213742','Cash','CycCyc003',58.32,NULL)

,('I258195','12/27/2016','Completed','SHP444555666','C213742','Cash','BoxBox006',46.8,NULL)

,('I300213','12/28/2016','Completed','TRK333555666','C962515','Credit Card','ScdScd004',28.8,NULL)

,('I300213','12/28/2016','Completed','TRK333555666','C962515','Credit Card','BktBkt001',35.64,NULL)

,('I300213','12/28/2016','Completed','TRK333555666','C962515','Credit Card','BoxBox002',42,NULL)

,('I263803','12/29/2016','Completed','PKG777888999','C112279','Cash','TenTen003',54,NULL)

,('I263803','12/29/2016','Completed','PKG777888999','C112279','Cash','CycCyc022',96.36,NULL)

,('I263803','12/29/2016','Completed','PKG777888999','C112279','Cash','FagFag009',88.56,NULL)

,('I335713','12/30/2016','Completed','EXP111222333','C158837','Cash','FagFag014',104.4,NULL)

,('I335713','12/30/2016','Completed','EXP111222333','C158837','Cash','BoxBox004',44.4,NULL)

,('I335713','12/30/2016','Completed','EXP111222333','C158837','Cash','TatTat011',51.6,NULL)

,('I335713','12/30/2016','Completed','EXP111222333','C158837','Cash','BasBas003',22.68,NULL)

,('I133061','12/31/2016','Completed','ORD666555444','C336576','Credit Card','FagFag010',89.64,NULL)

,('I133061','12/31/2016','Completed','ORD666555444','C336576','Credit Card','CycCyc014',85.8,NULL)

,('I207205','01/01/2017','Completed','CNM444555666','C716161','Debit Card','FooFoo003',97.2,NULL)

,('I207205','01/01/2017','Completed','CNM444555666','C716161','Debit Card','TenTen002',58.8,NULL)

,('I209289','01/02/2017','Completed','SHP666777888','C439382','Credit Card','SwmSwm002',31.2,NULL)

,('I209289','01/02/2017','Completed','SHP666777888','C439382','Credit Card','CycCyc018',82.8,NULL)

,('I157285','01/03/2017','Completed','TRK222333444','C123427','Cash','FagFag001',88.8,NULL)

,('I218590','01/04/2017','Completed','PKG888999000','C224743','Debit Card','RcyRcy019',25.08,NULL)

,('I218590','01/04/2017','Completed','PKG888999000','C224743','Debit Card','TrnTrn011',86.4,NULL)

,('I218590','01/04/2017','Completed','PKG888999000','C224743','Debit Card','TatTat013',54,NULL)

,('I218590','01/04/2017','Completed','PKG888999000','C224743','Debit Card','TrkTrk003',90,NULL)

,('I181109','01/05/2017','Completed','EXP333444555','C119549','Cash','BadBad004',26,NULL)

,('I181109','01/05/2017','Completed','EXP333444555','C119549','Cash','BasBas005',27.6,NULL)

,('I221715','01/06/2017','Completed','ORD777888999','C187266','Cash','BadBad007',36,NULL)

,('I221715','01/06/2017','Completed','ORD777888999','C187266','Cash','BoxBox013',49.68,NULL)

,('I221715','01/06/2017','Completed','ORD777888999','C187266','Cash','BktBkt006',42.24,NULL)

,('I221715','01/06/2017','Completed','ORD777888999','C187266','Cash','KykKyk001',115.2,NULL)

,('I204979','01/07/2017','Completed','CNM666555444','C173084','Debit Card','FagFag002',90,NULL)

,('I204979','01/07/2017','Completed','CNM666555444','C173084','Debit Card','FooFoo004',109.2,NULL)

,('I115146','01/08/2017','Completed','SHP888999000','C126956','Cash','TatTat002',40.8,NULL)

,('I115146','01/08/2017','Completed','SHP888999000','C126956','Cash','YogYog001',92.4,NULL)

,('I883721','01/09/2017','Completed','TRK444555666','C236859','Credit Card','BadBad001',25,NULL)

,('I883721','01/09/2017','Completed','TRK444555666','C236859','Credit Card','CycCyc002',63.6,NULL)

,('I883721','01/09/2017','Completed','TRK444555666','C236859','Credit Card','BadBad009',33,NULL)

,('I402376','01/10/2017','Completed','PKG555666777','C309926','Cash','BasBas005',27.6,NULL)

,('I402376','01/10/2017','Completed','PKG555666777','C309926','Cash','KykKyk003',117.6,NULL)

,('I402376','01/10/2017','Completed','PKG555666777','C309926','Cash','FagFag014',104.4,NULL)

,('I251356','01/11/2017','Completed','EXP444333222','C493252','Cash','BoxBox009',55.44,NULL)

,('I251356','01/11/2017','Completed','EXP444333222','C493252','Cash','CycCyc006',68.4,NULL)

,('I251356','01/11/2017','Completed','EXP444333222','C493252','Cash','TatTat014',60.72,NULL)

,('I251356','01/11/2017','Completed','EXP444333222','C493252','Cash','TrnTrn010',85.2,NULL)

,('I251356','01/11/2017','Completed','EXP444333222','C493252','Cash','BoxBox004',44.4,NULL)

,('I292239','01/12/2017','Returns','ORD333444555','C109871','Cash','ScdScd001',25.2,'AS54321')

,('I276526','01/13/2017','Completed','CNM555444333','C136117','Debit Card','CycCyc019',84,NULL)

,('I276526','01/13/2017','Completed','CNM555444333','C136117','Debit Card','BoxBox018',67.32,NULL)

,('I276526','01/13/2017','Completed','CNM555444333','C136117','Debit Card','BoxBox001',44.88,NULL)

,('I276526','01/13/2017','Completed','CNM555444333','C136117','Debit Card','TrnTrn008',74.52,NULL)

,('I276526','01/13/2017','Completed','CNM555444333','C136117','Debit Card','BoxBox007',48,NULL)

,('I260525','01/14/2017','Completed','SHP555444333','C258404','Cash','RcyRcy008',15,NULL)

,('I260525','01/14/2017','Completed','SHP555444333','C258404','Cash','BadBad005',27,NULL)

,('I260525','01/14/2017','Completed','SHP555444333','C258404','Cash','RcyRcy017',20.4,NULL)

,('I260525','01/14/2017','Completed','SHP555444333','C258404','Cash','BoxBox009',55.44,NULL)

,('I260525','01/14/2017','Completed','SHP555444333','C258404','Cash','TrnTrn010',85.2,NULL)

,('I870944','01/15/2017','Completed','TRK777666555','C169749','Credit Card','TenTen007',58.32,NULL)

,('I870944','01/15/2017','Completed','TRK777666555','C169749','Credit Card','TenTen011',69.6,NULL)

,('I870944','01/15/2017','Completed','TRK777666555','C169749','Credit Card','BadBad011',26.12,NULL)

,('I739573','01/16/2017','Returns','PKG666555444','C199947','Debit Card','BasBas007',33,'AS99791')

,('I739573','01/16/2017','Returns','PKG666555444','C199947','Debit Card','RcyRcy016',19.2,'AS99791')

,('I739573','01/16/2017','Returns','PKG666555444','C199947','Debit Card','YogYog003',94.8,'AS99791')

,('I115870','01/17/2017','Completed','EXP555444333','C135790','Cash','TatTat012',52.8,NULL)

,('I115870','01/17/2017','Completed','EXP555444333','C135790','Cash','TatTat008',43.2,NULL)

,('I190444','01/18/2017','Completed','ORD777888999','C606418','Cash','CycCyc015',71.28,NULL)

,('I190444','01/18/2017','Completed','ORD777888999','C606418','Cash','TatTat003',37.8,NULL)

,('I190444','01/18/2017','Completed','ORD777888999','C606418','Cash','TrnTrn007',73.44,NULL)

,('I309552','01/19/2017','Completed','CNM111222333','C111611','Credit Card','FooFoo005',110.4,NULL)

,('I309552','01/19/2017','Completed','CNM111222333','C111611','Credit Card','BadBad010',20.25,NULL)

,('I306076','01/20/2017','Cancelled','SHP444333222','C679476','Cash','YogYog003',94.8,NULL)

,('I306076','01/20/2017','Cancelled','SHP444333222','C679476','Cash','FagFag012',102,NULL)

,('I306076','01/20/2017','Cancelled','SHP444333222','C679476','Cash','TrnTrn011',86.4,NULL)

,('I306076','01/20/2017','Cancelled','SHP444333222','C679476','Cash','BasBas008',34.32,NULL)

,('I321683','01/21/2017','Completed','TRK666777888','C542025','Credit Card','FagFag011',90.72,NULL)

,('I321683','01/21/2017','Completed','TRK666777888','C542025','Credit Card','TenTen008',59.4,NULL)

,('I321683','01/21/2017','Completed','TRK666777888','C542025','Credit Card','CycCyc021',95.04,NULL)

,('I321683','01/21/2017','Completed','TRK666777888','C542025','Credit Card','BadBad012',19.2,NULL)

,('I321683','01/21/2017','Completed','TRK666777888','C542025','Credit Card','TatTat004',43.2,NULL)

,('I151332','01/22/2017','Completed','PKG666555444','C168491','Cash','RcyRcy009',15,NULL)

,('I151332','01/22/2017','Completed','PKG666555444','C168491','Cash','FagFag012',102,NULL)

,('I151332','01/22/2017','Completed','PKG666555444','C168491','Cash','BoxBox010',56.76,NULL)

,('I151332','01/22/2017','Completed','PKG666555444','C168491','Cash','FagFag010',89.64,NULL)

,('I340014','01/23/2017','Completed','EXP555444333','C169650','Credit Card','BasBas007',33,NULL)

,('I340014','01/23/2017','Completed','EXP555444333','C169650','Credit Card','CycCyc011',74.4,NULL)

,('I340014','01/23/2017','Completed','EXP555444333','C169650','Credit Card','CycCyc010',73.2,NULL)

,('I340014','01/23/2017','Completed','EXP555444333','C169650','Credit Card','CycCyc016',72.36,NULL)

,('I249424','01/24/2017','Completed','ORD333444555','C158160','Cash','BoxBox010',56.76,NULL)

,('I227716','01/25/2017','Completed','CNM555666777','C552345','Cash','TenTen013',79.2,NULL)

,('I227716','01/25/2017','Completed','CNM555666777','C552345','Cash','CycCyc016',72.36,NULL)

,('I140663','01/26/2017','Completed','SHP777888999','C218383','Cash','ScdScd001',25.2,NULL)

,('I253242','01/27/2017','Completed','TRK555444333','C309438','Cash','SwmSwm007',37.2,NULL)

,('I253242','01/27/2017','Completed','TRK555444333','C309438','Cash','RcyRcy004',15,NULL)

,('I253242','01/27/2017','Completed','TRK555444333','C309438','Cash','TatTat015',62.04,NULL)

,('I253242','01/27/2017','Completed','TRK555444333','C309438','Cash','BktBkt005',37.2,NULL)

,('I253242','01/27/2017','Completed','TRK555444333','C309438','Cash','TatTat002',40.8,NULL)

,('I108359','01/28/2017','Completed','PKG333444555','C253905','Cash','BadBad012',19.2,NULL)

,('I108359','01/28/2017','Completed','PKG333444555','C253905','Cash','CycCyc007',69.6,NULL)

,('I108359','01/28/2017','Completed','PKG333444555','C253905','Cash','RcyRcy005',15,NULL)

,('I108359','01/28/2017','Completed','PKG333444555','C253905','Cash','BktBkt002',33.6,NULL)

,('I195567','01/29/2017','Completed','EXP444333222','C992677','Debit Card','TrnTrn005',87.12,NULL)

,('I289643','01/30/2017','Completed','ORD666555444','C584700','Cash','FooFoo002',106.8,NULL)

,('I289643','01/30/2017','Completed','ORD666555444','C584700','Cash','BoxBox013',49.68,NULL)

,('I289643','01/30/2017','Completed','ORD666555444','C584700','Cash','CycCyc002',63.6,NULL)

,('I722319','01/31/2017','Completed','CNM666777888','C157070','Debit Card','KykKyk002',116.4,NULL)

,('I317105','02/01/2017','Completed','SHP222333444','C177975','Debit Card','BoxBox011',47.52,NULL)

,('I317105','02/01/2017','Completed','SHP222333444','C177975','Debit Card','CycCyc016',72.36,NULL)

,('I317105','02/01/2017','Completed','SHP222333444','C177975','Debit Card','CycCyc006',68.4,NULL)

,('I317105','02/01/2017','Completed','SHP222333444','C177975','Debit Card','BadBad014',23.76,NULL)

,('I215721','02/02/2017','Completed','TRK777888999','C830576','Debit Card','FooFoo001',116.16,NULL)

,('I215721','02/02/2017','Completed','TRK777888999','C830576','Debit Card','RcyRcy003',15,NULL)

,('I215721','02/02/2017','Completed','TRK777888999','C830576','Debit Card','TrnTrn004',85.8,NULL)

,('I215721','02/02/2017','Completed','TRK777888999','C830576','Debit Card','BoxBox002',42,NULL)

,('I215721','02/02/2017','Completed','TRK777888999','C830576','Debit Card','BasBas006',28.8,NULL)

,('I154469','02/03/2017','Completed','PKG777888999','C807389','Debit Card','RcyRcy013',15,NULL)

,('I172458','02/04/2017','Completed','EXP555444333','C277842','Debit Card','TenTen004',67.32,NULL)

,('I172458','02/04/2017','Completed','EXP555444333','C277842','Debit Card','RcyRcy001',15,NULL)

,('I172458','02/04/2017','Completed','EXP555444333','C277842','Debit Card','BasBas001',25.08,NULL)

,('I297270','02/05/2017','Completed','ORD888999000','C183011','Credit Card','BasBas002',24,NULL)

,('I153930','02/06/2017','Completed','CNM888999000','C567813','Cash','TrkTrk001',87.6,NULL)

,('I153930','02/06/2017','Completed','CNM888999000','C567813','Cash','RcyRcy002',15,NULL)

,('I282854','02/07/2017','Completed','SHP444555666','C282974','Cash','CycCyc005',67.2,NULL)

,('I282854','02/07/2017','Completed','SHP444555666','C282974','Cash','YogYog001',92.4,NULL)

,('I869144','02/08/2017','Returns','TRK333555666','C181972','Debit Card','CycCyc019',84,'AS13579')

,('I869144','02/08/2017','Returns','TRK333555666','C181972','Debit Card','CycCyc017',73.44,'AS13579')

,('I869144','02/08/2017','Returns','TRK333555666','C181972','Debit Card','TatTat007',51.48,'AS13579')

,('I869144','02/08/2017','Returns','TRK333555666','C181972','Debit Card','CycCyc015',71.28,'AS13579')

,('I283443','02/09/2017','Completed','SHP555666777','C189493','Credit Card','SwmSwm001',30,NULL)

,('I283443','02/09/2017','Completed','SHP555666777','C189493','Credit Card','BoxBox017',66,NULL)

,('I283443','02/09/2017','Completed','SHP555666777','C189493','Credit Card','CycCyc011',74.4,NULL)

,('I283443','02/09/2017','Completed','SHP555666777','C189493','Credit Card','RcyRcy001',15,NULL)

,('I283443','02/09/2017','Completed','SHP555666777','C189493','Credit Card','TrnTrn005',87.12,NULL)

,('I193271','02/10/2017','Completed','TRK666777888','C242748','Debit Card','FagFag011',90.72,NULL)

,('I193271','02/10/2017','Completed','TRK666777888','C242748','Debit Card','BoxBox015',57.6,NULL)

,('I985478','02/11/2017','Returns','PKG222333444','C324683','Credit Card','FooFoo006',111.6,'AS98765')

,('I985478','02/11/2017','Returns','PKG222333444','C324683','Credit Card','TrkTrk004',91.2,'AS98765')

,('I200392','02/12/2017','Completed','EXP777888999','C307921','Credit Card','TrnTrn009',84,NULL)

,('I200392','02/12/2017','Completed','EXP777888999','C307921','Credit Card','BadBad005',27,NULL)

,('I200392','02/12/2017','Completed','EXP777888999','C307921','Credit Card','KykKyk003',117.6,NULL)

,('I256691','02/13/2017','Returns','ORD555666777','C152549','Cash','BoxBox015',57.6,'AS43210')

,('I796162','02/14/2017','Completed','CNM111222333','C111832','Credit Card','TatTat008',43.2,NULL)

,('I796162','02/14/2017','Completed','CNM111222333','C111832','Credit Card','KykKyk005',15,NULL)

,('I796162','02/14/2017','Completed','CNM111222333','C111832','Credit Card','BktBkt002',33.6,NULL)

,('I224371','02/15/2017','Completed','SHP444555666','C204174','Credit Card','BadBad004',26,NULL)

,('I215998','02/16/2017','Cancelled','TRK333555666','C279370','Cash','SwmSwm001',30,NULL)

,('I215998','02/16/2017','Cancelled','TRK333555666','C279370','Cash','CycCyc022',96.36,NULL)

,('I215998','02/16/2017','Cancelled','TRK333555666','C279370','Cash','BadBad011',26.12,NULL)

,('I338966','02/17/2017','Completed','PKG777888999','C907582','Cash','FooFoo005',110.4,NULL)

,('I338966','02/17/2017','Completed','PKG777888999','C907582','Cash','RcyRcy012',15.84,NULL)

,('I338966','02/17/2017','Completed','PKG777888999','C907582','Cash','BoxBox001',44.88,NULL)

,('I338966','02/17/2017','Completed','PKG777888999','C907582','Cash','TenTen011',69.6,NULL)

,('I338966','02/17/2017','Completed','PKG777888999','C907582','Cash','RcyRcy015',16.2,NULL)

,('I293215','02/18/2017','Completed','EXP111222333','C166635','Credit Card','BoxBox010',56.76,NULL)

,('I149688','02/19/2017','Completed','ORD666555444','C276043','Cash','RcyRcy020',26.4,NULL)

,('I149688','02/19/2017','Completed','ORD666555444','C276043','Cash','TenTen009',60.48,NULL)

,('I149688','02/19/2017','Completed','ORD666555444','C276043','Cash','BadBad004',26,NULL)

,('I149688','02/19/2017','Completed','ORD666555444','C276043','Cash','TenTen013',79.2,NULL)

,('I149688','02/19/2017','Completed','ORD666555444','C276043','Cash','SwmSwm006',36,NULL)

,('I109649','02/20/2017','Completed','CNM444555666','C282643','Debit Card','BadBad007',36,NULL)

,('I109649','02/20/2017','Completed','CNM444555666','C282643','Debit Card','CycCyc010',73.2,NULL)

,('I299820','02/21/2017','Completed','SHP666777888','C820515','Cash','RcyRcy011',15,NULL)

,('I157775','02/22/2017','Completed','TRK222333444','C331761','Cash','FagFag014',104.4,NULL)

,('I157775','02/22/2017','Completed','TRK222333444','C331761','Cash','CycCyc003',58.32,NULL)

,('I157775','02/22/2017','Completed','TRK222333444','C331761','Cash','BoxBox008',54.12,NULL)

,('I157775','02/22/2017','Completed','TRK222333444','C331761','Cash','RcyRcy006',15,NULL)

,('I317140','02/23/2017','Completed','PKG888999000','C326893','Cash','RcyRcy007',15,NULL)

,('I147334','02/24/2017','Completed','EXP333444555','C306395','Cash','TatTat007',51.48,NULL)

,('I147334','02/24/2017','Completed','EXP333444555','C306395','Cash','CycCyc008',70.8,NULL)

,('I147334','02/24/2017','Completed','EXP333444555','C306395','Cash','TrkTrk002',88.8,NULL)

,('I147334','02/24/2017','Completed','EXP333444555','C306395','Cash','FagFag001',88.8,NULL)

,('I147334','02/24/2017','Completed','EXP333444555','C306395','Cash','BoxBox011',47.52,NULL)

,('I278121','02/25/2017','Completed','ORD777888999','C885344','Debit Card','TatTat006',50.16,NULL)

,('I278121','02/25/2017','Completed','ORD777888999','C885344','Debit Card','FooFoo006',111.6,NULL)

,('I278121','02/25/2017','Completed','ORD777888999','C885344','Debit Card','CycCyc020',85.2,NULL)

,('I278121','02/25/2017','Completed','ORD777888999','C885344','Debit Card','TatTat011',51.6,NULL)

,('I278121','02/25/2017','Completed','ORD777888999','C885344','Debit Card','BktBkt003',31.32,NULL)

,('I134452','02/26/2017','Completed','CNM666555444','C112750','Credit Card','CycCyc007',69.6,NULL)

,('I134452','02/26/2017','Completed','CNM666555444','C112750','Credit Card','FagFag006',104.28,NULL)

,('I320846','02/27/2017','Completed','SHP888999000','C274870','Credit Card','CycCyc017',73.44,NULL)

,('I320846','02/27/2017','Completed','SHP888999000','C274870','Credit Card','RcyRcy007',15,NULL)

,('I320846','02/27/2017','Completed','SHP888999000','C274870','Credit Card','TatTat004',43.2,NULL)

,('I740676','02/28/2017','Cancelled','TRK444555666','C199864','Credit Card','BoxBox017',66,NULL)

,('I740676','02/28/2017','Cancelled','TRK444555666','C199864','Credit Card','RcyRcy003',15,NULL)

,('I142331','03/01/2017','Completed','PKG555666777','C997380','Debit Card','RcyRcy018',21.6,NULL)

,('I222983','03/02/2017','Completed','EXP444333222','C132002','Credit Card','CycCyc012',83.16,NULL)

,('I222983','03/02/2017','Completed','EXP444333222','C132002','Credit Card','TrnTrn003',84.48,NULL)

,('I164665','03/03/2017','Completed','ORD333444555','C255058','Cash','CycCyc005',67.2,NULL)

,('I164665','03/03/2017','Completed','ORD333444555','C255058','Cash','FagFag004',92.4,NULL)

,('I164665','03/03/2017','Completed','ORD333444555','C255058','Cash','SwmSwm006',36,NULL)

,('I133387','03/04/2017','Completed','CNM555444333','C271799','Cash','BadBad002',20,NULL)

,('I133387','03/04/2017','Completed','CNM555444333','C271799','Cash','FagFag005',93.6,NULL)

,('I133387','03/04/2017','Completed','CNM555444333','C271799','Cash','TatTat009',44.28,NULL)

,('I133387','03/04/2017','Completed','CNM555444333','C271799','Cash','CycCyc008',70.8,NULL)

,('I276763','03/05/2017','Completed','SHP555444333','C765620','Debit Card','BasBas003',22.68,NULL)

,('I276763','03/05/2017','Completed','SHP555444333','C765620','Debit Card','FagFag005',93.6,NULL)

,('I276763','03/05/2017','Completed','SHP555444333','C765620','Debit Card','RcyRcy009',15,NULL)

,('I273890','03/06/2017','Completed','TRK777666555','C891545','Debit Card','BktBkt003',31.32,NULL)

,('I273890','03/06/2017','Completed','TRK777666555','C891545','Debit Card','FagFag004',92.4,NULL)

,('I273890','03/06/2017','Completed','TRK777666555','C891545','Debit Card','BasBas001',25.08,NULL)

,('I774221','03/07/2017','Returns','PKG666555444','C519513','Cash','CycCyc003',58.32,'AS56789')

,('I774221','03/07/2017','Returns','PKG666555444','C519513','Cash','BasBas004',26.4,'AS56789')

,('I774221','03/07/2017','Returns','PKG666555444','C519513','Cash','SwmSwm003',32.4,'AS56789')

,('I202171','03/08/2017','Completed','EXP555444333','C125624','Debit Card','BoxBox007',48,NULL)

,('I202171','03/08/2017','Completed','EXP555444333','C125624','Debit Card','BadBad013',22.44,NULL)

,('I219780','03/09/2017','Completed','ORD777888999','C658980','Cash','BasBas001',25.08,NULL)

,('I219780','03/09/2017','Completed','ORD777888999','C658980','Cash','BoxBox001',44.88,NULL)

,('I160221','03/10/2017','Completed','CNM111222333','C319231','Cash','CycCyc021',95.04,NULL)

,('I160221','03/10/2017','Completed','CNM111222333','C319231','Cash','FooFoo003',97.2,NULL)

,('I160221','03/10/2017','Completed','CNM111222333','C319231','Cash','SwmSwm002',31.2,NULL)

,('I160221','03/10/2017','Completed','CNM111222333','C319231','Cash','RcyRcy018',21.6,NULL)

,('I106691','03/11/2017','Completed','SHP444333222','C150594','Cash','BoxBox006',46.8,NULL)

,('I106691','03/11/2017','Completed','SHP444333222','C150594','Cash','FagFag013',103.2,NULL)

,('I106691','03/11/2017','Completed','SHP444333222','C150594','Cash','BoxBox014',56.4,NULL)

,('I106691','03/11/2017','Completed','SHP444333222','C150594','Cash','TenTen004',67.32,NULL)

,('I106691','03/11/2017','Completed','SHP444333222','C150594','Cash','BoxBox015',57.6,NULL)

,('I129886','03/12/2017','Returns','TRK666777888','C846730','Cash','BasBas008',34.32,'AS23456')

,('I745394','03/13/2017','Completed','PKG666555444','C249877','Cash','FagFag012',102,NULL)

,('I745394','03/13/2017','Completed','PKG666555444','C249877','Cash','TenTen006',69.96,NULL)

,('I745394','03/13/2017','Completed','PKG666555444','C249877','Cash','BoxBox016',58.8,NULL)

,('I745394','03/13/2017','Completed','PKG666555444','C249877','Cash','FagFag001',88.8,NULL)

,('I745394','03/13/2017','Completed','PKG666555444','C249877','Cash','FagFag002',90,NULL)

,('I157056','03/14/2017','Completed','EXP555444333','C200826','Cash','RcyRcy017',20.4,NULL)

,('I157056','03/14/2017','Completed','EXP555444333','C200826','Cash','BadBad003',15,NULL)

,('I304531','03/15/2017','Completed','ORD333444555','C263874','Debit Card','BoxBox009',55.44,NULL)

,('I304531','03/15/2017','Completed','ORD333444555','C263874','Debit Card','ScdScd004',28.8,NULL)

,('I762439','03/16/2017','Cancelled','CNM555666777','C663463','Cash','ScdScd002',26.4,NULL)

,('I300972','03/17/2017','Completed','SHP777888999','C134370','Credit Card','BktBkt005',37.2,NULL)

,('I300972','03/17/2017','Completed','SHP777888999','C134370','Credit Card','BasBas006',28.8,NULL)

,('I300972','03/17/2017','Completed','SHP777888999','C134370','Credit Card','BoxBox013',49.68,NULL)

,('I300972','03/17/2017','Completed','SHP777888999','C134370','Credit Card','FagFag008',106.92,NULL)

,('I151588','03/18/2017','Completed','TRK555444333','C310642','Credit Card','TatTat010',45.36,NULL)

,('I657069','03/19/2017','Completed','PKG333444555','C651699','Cash','BoxBox008',54.12,NULL)

,('I122655','03/20/2017','Completed','EXP444333222','C989693','Credit Card','BoxBox011',47.52,NULL)

,('I236914','03/21/2017','Completed','ORD666555444','C123581','Cash','BktBkt001',35.64,NULL)

,('I236914','03/21/2017','Completed','ORD666555444','C123581','Cash','BoxBox017',66,NULL)

,('I236914','03/21/2017','Completed','ORD666555444','C123581','Cash','TrnTrn006',72.36,NULL)

,('I247471','03/22/2017','Completed','CNM666777888','C192446','Cash','FagFag007',105.6,NULL)

,('I247471','03/22/2017','Completed','CNM666777888','C192446','Cash','FagFag002',90,NULL)

,('I247471','03/22/2017','Completed','CNM666777888','C192446','Cash','TenTen002',58.8,NULL)

,('I247471','03/22/2017','Completed','CNM666777888','C192446','Cash','TrnTrn002',75.6,NULL)

,('I247471','03/22/2017','Completed','CNM666777888','C192446','Cash','BasBas004',26.4,NULL)

,('I362306','03/23/2017','Completed','SHP222333444','C143343','Credit Card','BadBad003',15,NULL)

,('I362306','03/23/2017','Completed','SHP222333444','C143343','Credit Card','BadBad009',33,NULL)

,('I362306','03/23/2017','Completed','SHP222333444','C143343','Credit Card','BadBad011',26.12,NULL)

,('I362306','03/23/2017','Completed','SHP222333444','C143343','Credit Card','FagFag007',105.6,NULL)

,('I362306','03/23/2017','Completed','SHP222333444','C143343','Credit Card','BktBkt003',31.32,NULL)

,('I215279','03/24/2017','Completed','TRK777888999','C223343','Credit Card','TenTen008',59.4,NULL)

,('I215279','03/24/2017','Completed','TRK777888999','C223343','Credit Card','CycCyc018',82.8,NULL)

,('I215279','03/24/2017','Completed','TRK777888999','C223343','Credit Card','FagFag009',88.56,NULL)

,('I216061','03/25/2017','Completed','PKG777888999','C309082','Credit Card','TenTen014',80.52,NULL)

,('I216061','03/25/2017','Completed','PKG777888999','C309082','Credit Card','ScdScd003',27.6,NULL)

,('I216061','03/25/2017','Completed','PKG777888999','C309082','Credit Card','CycCyc022',96.36,NULL)

,('I216061','03/25/2017','Completed','PKG777888999','C309082','Credit Card','RcyRcy016',19.2,NULL)

,('I216061','03/25/2017','Completed','PKG777888999','C309082','Credit Card','CycCyc013',84.48,NULL)

,('I246375','03/26/2017','Completed','EXP555444333','C236365','Cash','CycCyc014',85.8,NULL)

,('I246375','03/26/2017','Completed','EXP555444333','C236365','Cash','BktBkt005',37.2,NULL)

,('I246375','03/26/2017','Completed','EXP555444333','C236365','Cash','SwmSwm004',33.6,NULL)

,('I103596','03/27/2017','Cancelled','ORD888999000','C178734','Cash','BktBkt007',43.56,NULL)

,('I103596','03/27/2017','Cancelled','ORD888999000','C178734','Cash','BktBkt004',36,NULL)

,('I259878','03/28/2017','Completed','CNM888999000','C223010','Credit Card','BoxBox008',54.12,NULL)

,('I206422','03/29/2017','Completed','SHP444555666','C289933','Credit Card','RcyRcy008',15,NULL)

,('I206422','03/29/2017','Completed','SHP444555666','C289933','Credit Card','TatTat001',43.56,NULL)

,('I206422','03/29/2017','Completed','SHP444555666','C289933','Credit Card','CycCyc001',68.64,NULL)

,('I206424','03/30/2017','Completed','TRK333555666','C340116','Cash','CycCyc017',73.44,NULL)

,('I206424','03/30/2017','Completed','TRK333555666','C340116','Cash','FagFag010',89.64,NULL);

DROP TABLE IF EXISTS address;

CREATE TABLE IF NOT EXISTS address(

   Address_ID  INTEGER  NOT NULL PRIMARY KEY AUTO_INCREMENT

  ,Address     VARCHAR(76) NOT NULL

  ,Postcode    VARCHAR(8) NOT NULL

  ,Customer_ID VARCHAR(7)

  ,Employee_ID VARCHAR(4)

);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (1,'Upper Street, Stratford St Mary, COLCHESTER, Essex','CO7 6LW','C241288',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (2,'Egremont Street, Glemsford, SUDBURY, Suffolk','CO10 7SA','C111565',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (3,'7 Market Hill, SUDBURY, Suffolk','CO10 2EA','C266599',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (4,'Lower Street, Stratford St Mary, COLCHESTER, Essex','CO7 6JS','C988172',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (5,'Lion Road, Glemsford, SUDBURY, Suffolk','CO10 7RF','C189076',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (6,'Bristol Hill, Shotley, IPSWICH, Suffolk','IP9 1PU','C657758',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (7,'Pin Mill Road, Chelmondiston, IPSWICH, Suffolk','IP9 1JW','C151197',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (8,'Heath Road, East Bergholt, COLCHESTER, Essex','CO7 6RA','C176086',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (9,'The Bull Inn, The Street, Brantham, MANNINGTREE','CO11 1PN','C159642',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (10,'The Grange Caravan Park, Straight Road, East Bergholt, COLCHESTER','CO7 6UX','C283361',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (11,'Hall Street, Long Melford, SUDBURY, Suffolk','CO10 9JR','C240286',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (12,'Cattawade Street, Brantham, MANNINGTREE, Essex','CO11 1RE','C191708',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (13,'Eight Bells Public House, 90-92 Angel Street, Hadleigh, IPSWICH','IP7 5DD','C225330',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (14,'The Swan Inn, The Street, Monks Eleigh, IPSWICH','IP7 7AU','C312861',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (15,'63 Bures Road, Great Cornard, SUDBURY, Suffolk','CO10 0HU','C555402',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (16,'Church Street, Groton, SUDBURY, Suffolk','CO10 5ED','C362288',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (17,'Manningtree Road, Stutton, IPSWICH, Suffolk','IP9 2TG','C300786',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (18,'25-27 Hunts Hill, Glemsford, SUDBURY, Suffolk','CO10 7RP','C330667',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (19,'The Grover and Allen, 67-70 North Street, SUDBURY, Suffolk','CO10 1RF','C218149',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (20,'Harrow Street, Leavenheath, COLCHESTER, Essex','CO6 4PW','C196845',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (21,'Heath Road, East Bergholt, COLCHESTER, Essex','CO7 6RL','C220180',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (22,'132 High Street, Bildeston, IPSWICH, Suffolk','IP7 7ED','C125696',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (23,'115 Bures Road, Great Cornard, SUDBURY, Suffolk','CO10 0JE','C322947',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (24,'Ex-Service & Social Club, Hall Street, Long Melford, SUDBURY','CO10 9JL','C313348',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (25,'Cats Lane, Great Cornard, SUDBURY, Suffolk','CO10 2RZ','C204553',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (26,'North Street, SUDBURY, Suffolk','CO10 1RE','C285161',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (27,'Flat 1, Croft Road, SUDBURY, Suffolk','CO10 1JD','C289625',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (28,'Bourne Hill, Wherstead, IPSWICH, Suffolk','IP2 8ND','C192344',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (29,'Great Green, Cockfield, BURY ST EDMUNDS, Suffolk','IP30 0HJ','C447138',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (30,'New Street, SUDBURY, Suffolk','CO10 1JB','C251229',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (31,'The Row, Wenham Magna, COLCHESTER, Essex','CO7 6PU','C159164',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (32,'The Street, Layham, IPSWICH, Suffolk','IP7 5LZ','C501658',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (33,'Main Road, Chelmondiston, IPSWICH, Suffolk','IP9 1DX','C176727',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (34,'The Street, Elmsett, IPSWICH, Suffolk','IP7 6PA','C232624',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (35,'Cat House Lane, Woolverstone, IPSWICH, Suffolk','IP9 1AT','C164092',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (36,'East End Lane, East Bergholt, COLCHESTER, Essex','CO7 6XA','C276887',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (37,'Shotley Marina, Shotley, IPSWICH, Suffolk','IP9 1QJ','C245456',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (38,'The Street, Assington, SUDBURY, Suffolk','CO10 5LJ','C450287',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (39,'54 Station Road, SUDBURY, Suffolk','CO10 2SP','C204279',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (40,'Lower Street, Stratford St Mary, COLCHESTER, Essex','CO7 6JR','C452806',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (41,'26 Court Street, Nayland with Wissington, COLCHESTER, Essex','CO6 4JL','C716788',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (42,'The Angel, Market Place, Lavenham, SUDBURY','CO10 9QZ','C155059',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (43,'Polstead Street, Stoke by Nayland, COLCHESTER, Essex','CO6 4SA','C306662',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (44,'61-65 Melford Road, SUDBURY, Suffolk','CO10 1JS','C607615',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (45,'Hadleigh Road, Sproughton, IPSWICH, Suffolk','IP8 3AR','C120164',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (46,'The Bell Inn, The Street, Kersey, IPSWICH','IP7 6DY','C134449',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (47,'Bower House Tye, Polstead, COLCHESTER, Essex','CO6 5BZ','C317818',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (48,'East Street, SUDBURY, Suffolk','CO10 2TP','C241642',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (49,'The Brook Inn, 241 Bures Road, Great Cornard, SUDBURY','CO10 0JQ','C126436',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (50,'The Street, Copdock And Washbrook, IPSWICH, Suffolk','IP8 3HR','C653385',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (51,'The Bush, The Street, Shimpling, BURY ST EDMUNDS','IP29 4HU','C227070',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (52,'Capel Road, Bentley, IPSWICH, Suffolk','IP9 2DW','C317478',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (53,'Lavenham Road, Brent Eleigh, SUDBURY, Suffolk','CO10 9PB','C237330',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (54,'The Cock Inn, Church Street, Lavenham, SUDBURY','CO10 9SA','C626042',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (55,'89 George Street, Hadleigh, IPSWICH, Suffolk','IP7 5BP','C133687',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (56,'Egremont Street, Glemsford, SUDBURY, Suffolk','CO10 7SA','C841663',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (57,'Polstead Green, Polstead, COLCHESTER, Essex','CO6 5AL','C213742',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (58,'Unit 3, The Pied Cow, 12 King Street, SUDBURY, Suffolk','CO10 2EB','C962515',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (59,'High Street, Acton, SUDBURY, Suffolk','CO10 0AT','C112279',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (60,'Park Street, Stoke by Nayland, COLCHESTER, Essex','CO6 4SE','C158837',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (61,'The Green, Hartest, BURY ST EDMUNDS, Suffolk','IP29 4DH','C336576',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (62,'Delphi Diesel Systems Ltd, Newton Road, SUDBURY, Suffolk','CO10 2RR','C716161',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (63,'The Fleece, 8-10 Broad Street, Boxford, SUDBURY','CO10 5DX','C439382',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (64,'52 High Street, Hadleigh, IPSWICH, Suffolk','IP7 5AL','C123427',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (65,'The George and Dragon Public House, Hall Street, Long Melford, SUDBURY','CO10 9JA','C224743',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (66,'George Street, Hintlesham, IPSWICH, Suffolk','IP8 3NH','C119549',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (67,'High Street, Lavenham, SUDBURY, Suffolk','CO10 9PZ','C187266',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (68,'The Bakers Arms, The Street, Harkstead, IPSWICH','IP9 1BT','C173084',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (69,'Three Horseshoes, Stows Hill, Cockfield, BURY ST EDMUNDS','IP30 0JB','C126956',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (70,'90 High Street, Hadleigh, IPSWICH, Suffolk','IP7 5EF','C236859',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (71,'Kings Head, Manningtree Road, Stutton, IPSWICH','IP9 2SW','C309926',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (72,'Honey Tye, Leavenheath, COLCHESTER, Essex','CO6 4NX','C493252',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (73,'Station Road, Long Melford, SUDBURY, Suffolk','CO10 9HN','C109871',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (74,'37 The Street, Chelsworth, IPSWICH, Suffolk','IP7 7HU','C136117',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (75,'High Street, Bildeston, IPSWICH, Suffolk','IP7 7EX','C258404',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (76,'The Street, East Bergholt, COLCHESTER, Essex','CO7 6TB','C169749',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (77,'The Street, Shotley, IPSWICH, Suffolk','IP9 1NL','C199947',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (78,'Cordell Road, Long Melford, SUDBURY, Suffolk','CO10 9EB','C135790',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (79,'George Street, Hadleigh, IPSWICH, Suffolk','IP7 5BB','C606418',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (80,'Sudbury Road, Newton, SUDBURY, Suffolk','CO10 0QJ','C111611',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (81,'East Street, SUDBURY, Suffolk','CO10 2HX','C679476',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (82,'The Street, Preston St Mary, SUDBURY, Suffolk','CO10 9NG','C542025',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (83,'Hall Street, Long Melford, SUDBURY, Suffolk','CO10 9JQ','C168491',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (84,'Swan Inn, The Street, Holbrook, IPSWICH','IP9 2PZ','C169650',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (85,'The Street, Lawshall, BURY ST EDMUNDS, Suffolk','IP29 4QA','C158160',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (86,'The Swan, The Street, Little Waldingfield, SUDBURY','CO10 0SQ','C552345',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (87,'Lavenham Road, The Heath, Great Waldingfield, SUDBURY, Suffolk','CO10 0SE','C218383',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (88,'London Road, Capel St Mary, IPSWICH, Suffolk','IP9 2JR','C309438',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (89,'White Horse Inn, Mill Green, Edwardstone, SUDBURY','CO10 5PX','C253905',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (90,'Wild Man Inn, Bramford Road, Sproughton, IPSWICH','IP8 3DA','C992677',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (91,'Church Square, Bures St Mary, BURES, Suffolk','CO8 5BS','C584700',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (92,'White Horse Road, East Bergholt, COLCHESTER, Essex','CO7 6TU','C157070',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (93,'Church Walk, SUDBURY, Suffolk','CO10 1HJ','C177975',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (94,'Church Road, Tattingstone, IPSWICH, Suffolk','IP9 2LY','C830576',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (95,'Whatfield Road, Nedging with Naughton, IPSWICH, Suffolk','IP7 7BS','C807389',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (96,'North Street, SUDBURY, Suffolk','CO10 1RF','C277842',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (97,'Vitro Bars Ltd, 2 Western Road, Billericay, Essex','CM12 9DZ','C183011',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (98,'Barleylands Road, Basildon, Essex','SS15 4BJ','C567813',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (99,'The Clubhouse,Mopsies Park, Timberlog Close, Basildon, Essex','SS14 1PF','C282974',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (100,'Gardiners Close, Basildon, Essex','SS14 3AW','C181972',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (101,'5 High Pavement, Basildon, Essex','SS14 1EA','C189493',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (102,'Gardiners Way, Basildon, Essex','SS14 3AP','C242748',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (103,'Gardiners Close, Basildon, Essex','SS14 3AW','C324683',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (104,'Southernhay, Basildon, Essex','SS14 1DQ','C307921',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (105,'77 Pound Lane, Bowers Gifford, Pitsea,Essex.','SS13 2HL','C152549',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (106,'Barleylands Farm, Barleylands Road, Billericay, Essex','CM11 2UD','C111832',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (107,'1a High Street, Billericay, Essex','CM12 9BE','C204174',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (108,'The Toby Howe Cricket Ground, Blunts Wall Road, Billericay, Essex.','CM12 9SA','C279370',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (109,'Laindon Link, Laindon, Basildon,Essex.','SS15 5UH','C907582',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (110,'Bowers United Sports And Social Club, Crown Avenue, Pitsea, Basildon','SS13 2BE','C166635',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (111,'Market Avenue, Wickford, Essex','SS12 0AD','C276043',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (112,'Bromford Sports Centre, Grange Avenue, Wickford, Essex.','SS12 0LZ','C282643',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (113,'Castle Mayne, The Knares, Basildon, Essex','SS16 5RZ','C820515',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (114,'44 High Street, Billericay, Essex','CM12 9BQ','C331761',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (115,'Festival Leisure Park, Cranes Farm Road, Basildon, Essex','SS14 3TJ','C326893',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (116,'Club Kingswood, Clay Hill Lane, Basildon, Essex','SS16 5JP','C306395',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (117,'Luminar Unit 1, Festival Way, Basildon, Essex','SS14 3WB','C885344',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (118,'Cromwell Manor, Pitsea Hall Lane, Pitsea, Essex','SS16 4UH','C112750',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (119,'Gardiners Lane South, Basildon, Essex','SS14 3AP','C274870',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (120,'Festival Way, Basildon, Essex','SS14 3DG','C199864',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (121,'Dick Turpin, Southend Arterial Road, Wickford, Essex','SS12 9HZ','C997380',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (122,'130 London Road, Wickford, Essex','SS12 0AR','C132002',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (123,'Lower Dunton Road, Dunton, Basildon,Essex.','CM13 3SX','C255058',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (124,'Gardiners Close, Basildon, Essex','SS14 3AW','C271799',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (125,'Whitmore Way, Basildon, Essex','SS14 2NN','C765620',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (126,'Fryerns Social Club, Fryerns Community Centre, Whitmore Way, Basildon, Essex','SS14 2NN','C891545',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (127,'The Barnett Centre, Butneys, Basildon, Essex','SS14 2DG','C519513',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (128,'Great Chalvedon Hall, Rectory Road, Pitsea, Basildon','SS13 2AN','C125624',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (129,'Darby Digger, Radwinter Avenue, Wickford, Essex','SS12 9PT','C658980',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (130,'High Road, Langdon Hills, Basildon,Essex.','SS16 6HU','C319231',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (131,'Holy Cross Recreation Ground Pavilion, Church Road, Basildon, Essex','SS14 2EX','C150594',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (132,'Mountnessing Road, Billericay, Essex','CM12 0EH','C846730',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (133,'39 High Street, Billericay, Essex','CM12 9BA','C249877',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (134,'Whitmore Way, Basildon, Essex','SS14 3JT','C200826',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (135,'Southernhay, Basildon, Essex','SS14 1DJ','C263874',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (136,'Southend Road, Billericay, Essex','CM11 2PS','C663463',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (137,'1-15 Market Square, Basildon, Essex','SS14 1DF','C134370',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (138,'164 Clay Hill Road, Basildon, Essex','SS16 5DF','C310642',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (139,'Gardiners Way, Basildon, Essex','SS14 3AP','C651699',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (140,'Time Square, Basildon, Essex','SS14 1DJ','C989693',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (141,'113 High Street, Billericay, Essex','CM12 9AJ','C123581',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (142,'66-68 Laindon Road, Billericay, Essex','CM12 9LD','C192446',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (143,'73-77 Runwell Road, Wickford, Essex','SS11 7HL','C143343',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (144,'S Wernick & Sons Ltd, Russell Gardens, Shotgate, Wickford','SS11 8BL','C223343',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (145,'Nether Mayne, Basildon, Essex','SS16 5NL','C309082',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (146,'Wickford Community Centre, Market Road, Wickford, Essex','SS12 0AG','C236365',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (147,'Queens Park Avenue, Billericay, Essex','CM12 0SP','C178734',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (148,'Tye Common Road, Little Burstead, Billericay,Essex.','CM12 9SS','C223010',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (149,'Bowers United Sports And Social Club, Crown Avenue, Pitsea, Basildon','SS13 2BE','C289933',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (150,'The Coach and Horses, 36 Chapel Street, Billericay, Essex','CM12 9LU','C340116',NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (211,'Gardeners Arms, 12 Sandhurst Road, Bedford','MK42 9HS',NULL,'E100');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (212,'George And Dragon, 39 Mill Street, Bedford','MK40 3EU',NULL,'E101');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (181,'72 St Loyes Street, Bedford','MK40 1EZ',NULL,'E102');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (272,'Crown Inn Public House, Phoenix Park, Wyboston, Bedford','PE19 8EN',NULL,'E103');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (151,'The Crane, Denys Drive, Basildon, Essex','SS14 3LP',NULL,'E104');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (242,'The Royal Oak, 91 Woburn Road, Kempston, Bedford','MK42 7QR',NULL,'E105');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (213,'Gordon Arms, 118 Castle Road, Bedford','MK40 3QY',NULL,'E106');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (182,'Bedford And County Golf Club, Green Lane, Clapham, Bedford','MK41 6ET',NULL,'E107');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (273,'The Duke Inn, 10 Woburn Road, Kempston, Bedford','MK42 7QA',NULL,'E108');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (152,'2 High Street, Billericay, Essex','CM12 9BQ',NULL,'E109');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (243,'Russell Park Social Club, 69 Goldington Road, Bedford','MK40 3ND',NULL,'E110');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (214,'Greyfriars Snooker Centre, Greyfriars, Bedford','MK40 1HP',NULL,'E111');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (183,'Bedford And County Golf Club, Green Lane, Clapham, Bedford','MK41 6ET',NULL,'E112');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (274,'The Falcon Inn, Rushden Road, Bletsoe, Bedford','MK44 1QN',NULL,'E113');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (153,'80 High Street, Wickford, Essex','SS12 9AT',NULL,'E114');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (244,'The Ship, 7 St Cuthberts Street, Bedford','MK40 3JB',NULL,'E115');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (215,'The Half Moon, 108 High Street, Kempston, Bedford','MK42 7BN',NULL,'E116');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (184,'Bedford Arms, High Street, Souldrop, Bedford','MK44 1EY',NULL,'E117');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (275,'The Five Bells, 1-3 Northill Road, Cople, Bedford','MK44 3TU',NULL,'E118');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (154,'The Dukes Head, Laindon Common Road, Little Burstead, Billericay','CM12 9TA',NULL,'E119');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (245,'Shortstown Village Hall, Shorts Avenue, Shortstown, Bedford','MK42 0FB',NULL,'E120');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (216,'30-32 High Street, Bedford','MK40 1SP',NULL,'E121');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (185,'Bedford Athletic Rugby Club, Wentworth Drive, Bedford','MK41 8QA',NULL,'E122');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (276,'The Flowerpot, 25 Tavistock Street, Bedford','MK40 2RB',NULL,'E123');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (155,'The Edge, 6-8 High Pavement, Basildon, Essex','SS14 1EA',NULL,'E124');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (246,'The Smiths Arms, 15 Margetts Road, Kempston, Bedford','MK42 8DS',NULL,'E125');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (217,'Horse & Jockey, Church End, Ravensden, Bedford','MK44 2RR',NULL,'E126');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (186,'Bedford Borough Bowling Club, Goldington Road, Bedford','MK40 3NF',NULL,'E127');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (277,'2 Ram Yard, Bedford','MK40 1AL',NULL,'E128');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (156,'The Forge, 1-2 The Pantiles, Billericay, Essex','CM12 0UA',NULL,'E129');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (247,'The Pavilion, Chester Road, Bedford','MK40 4HL',NULL,'E130');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (218,'2 Spenser Road, Bedford','MK40 2AZ',NULL,'E131');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (187,'Bedford Rowing Club, Duckmill Lane, Bedford','MK42 0AX',NULL,'E132');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (278,'The Foresters Arms, 41 Union Street, Bedford','MK40 2SF',NULL,'E133');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (157,'Victoria Road, Laindon, Basildon,Essex.','SS15 6AW',NULL,'E134');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (248,'Sporting Targets Ltd, Knotting Lane, Riseley, Bedford','MK44 1BX',NULL,'E135');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (219,'196a Bedford Road, Kempston, Bedford','MK42 8BL',NULL,'E136');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (188,'Bedford Rugby Union F C, Goldington Road, Bedford','MK40 3NF',NULL,'E137');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (279,'32-34 Mill Street, Bedford','MK40 3HD',NULL,'E138');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (158,'Festival Leisure Park, Cranes Farm Road, Basildon, Essex.','SS14 3TJ',NULL,'E139');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (249,'St Johns Arms, Knotting Road, Melchbourne, Bedford','MK44 1BG',NULL,'E140');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (220,'290 Hillgrounds Road, Kempston, Bedford','MK42 8UB',NULL,'E141');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (189,'The Standard, 26-28 High Street, Bedford','MK40 1SP',NULL,'E142');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (280,'The Muntjac, 71 High Street, Harrold, Bedford','MK43 7BJ',NULL,'E143');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (159,'25 Laindon Centre, Basildon, Essex','SS15 5TQ',NULL,'E144');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (250,'Star Rowing Club, Commercial Road, Bedford','MK40 1QS',NULL,'E145');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (221,'Kent Arms, 54 Salisbury Street, Bedford','MK41 7RQ',NULL,'E146');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (190,'Bedford Town Football Club, Meadow Lane, Bedford','MK44 3LW',NULL,'E147');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (281,'The New Inn, 1 Rushden Road, Wymington, Bedford','NN10 9LN',NULL,'E148');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (160,'Burnt Mills Road, Pitsea, Essex.','SS13 1DT',NULL,'E149');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (251,'The Club House, Stewartby Way, Stewartby, Bedford','MK43 9NU',NULL,'E150');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (222,'King William Iv, 56 High Street, Kempston, Bedford','MK42 7AL',NULL,'E151');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (191,'Bedfordshire Golf Club, Spring Lane, Stagsden, Bedford','MK43 8SR',NULL,'E152');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (282,'The Sportsman, 58 The Boundary, Bedford','MK41 9HA',NULL,'E153');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (161,'Noak Bridge Public House, 45 Wash Road, Laindon, Basildon','SS15 4BS',NULL,'E154');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (252,'Swan Inn, 21 Bridge End, Bromham, Bedford','MK43 8LS',NULL,'E155');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (223,'Kings Arms, The Green, Cardington, Bedford','MK44 3SP',NULL,'E156');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (192,'Pavillion, Deep Spinney, Biddenham, Bedford','MK40 4QP',NULL,'E157');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (283,'The Oakley Arms, 98 High Street, Harrold, Bedford','MK43 7BH',NULL,'E158');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (162,'186 Great Knightleys, Basildon, Essex','SS15 5HG',NULL,'E159');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (253,'The Keep, Bedford Road, Kempston, Bedford','MK42 8AH',NULL,'E160');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (224,'The Kings Arms, 24 St Marys Street, Bedford','MK42 0AS',NULL,'E161');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (193,'115-117 High Street, Bedford','MK40 1NU',NULL,'E162');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (284,'2 Lurke Street, Bedford','MK40 3HY',NULL,'E163');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (163,'Festival Leisure Park, Cranes Farm Road, Basildon, Essex.','SS14 3WB',NULL,'E164');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (254,'The Anchor, 397 Goldington Road, Bedford','MK41 0DS',NULL,'E165');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (225,'57 London Road, Bedford','MK42 0NX',NULL,'E166');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (194,'Briar Bank Club, Hawthorn Drive, Wilstead, Bedford','MK45 3ES',NULL,'E167');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (285,'The Park Public House, 98 Kimbolton Road, Bedford','MK40 2PF',NULL,'E168');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (164,'1 High Street, Billericay, Essex','CM12 9BE',NULL,'E169');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (255,'The Anchor Inn, Cardington Road, Bedford','MK42 0DA',NULL,'E170');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (226,'Meltis Sports And Social Club, Miller Road, Bedford','MK42 9FS',NULL,'E171');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (195,'Burnaby Arms, 66 Stanley Street, Bedford','MK41 7RU',NULL,'E172');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (286,'The Pheasant, 300 Kimbolton Road, Bedford','MK41 8YR',NULL,'E173');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (165,'The New Mayflower, Jacksons Lane, Billericay, Essex','CM11 2DG',NULL,'E174');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (256,'The Anchor Inn, 85 High Street, Great Barford, Bedford','MK44 3LF',NULL,'E175');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (227,'91 Mile Road, Bedford','MK42 9UD',NULL,'E176');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (196,'The Chequers Inn, 47 Hall End Road, Wootton, Bedfordshire','MK43 9HP',NULL,'E177');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (287,'The Rose, 45 High Street, Bedford','MK40 1RY',NULL,'E178');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (166,'The Swan, The Broadway, Wickford, Essex','SS11 7AD',NULL,'E179');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (257,'The Artisan Tap, 92 High Street, Bedford','MK40 1NN',NULL,'E180');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (228,'Mulberry Bush, Springfield Centre, Kempston, Bedford','MK42 7PR',NULL,'E181');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (197,'32a Alexandra Road, Bedford','MK40 1JA',NULL,'E182');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (288,'The Royal George, 8-10 Silver Street, Stevington, Bedford','MK43 7QP',NULL,'E183');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (167,'East Mayne, Basildon, Essex','SS13 1BW',NULL,'E184');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (258,'52 Foster Hill Road, Bedford','MK40 2ET',NULL,'E185');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (229,'The North End Working Mens Social Club, 60 Roff Avenue, Bedford','MK41 7TW',NULL,'E186');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (198,'Colmworth Golf Club, New Road, Colmworth, Bedford','MK44 2AP',NULL,'E187');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (289,'23 Bridgend, Carlton, Bedford','MK43 7LP',NULL,'E188');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (168,'35 Kingswood Road, Basildon, Essex','SS16 5UP',NULL,'E189');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (259,'Bedford Arms, 57 High Street, Oakley, Bedford','MK43 7RH',NULL,'E190');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (230,'13 St Pauls Square, Bedford','MK40 1SL',NULL,'E191');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (199,'Unilever Sports & Social Club,, Colworth Estate, Sharnbrook, Bedford','MK44 1LQ',NULL,'E192');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (290,'The Ship, 102 Bromham Road, Bedford','MK40 2QH',NULL,'E193');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (169,'Unit 7, Festival Way, Basildon, Essex','SS14 3WB',NULL,'E194');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (260,'11 De Parys Avenue, Bedford','MK40 2TX',NULL,'E195');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (231,'Oakley Sport And Social Club, Church Lane, Oakley, Bedford','MK43 7RJ',NULL,'E196');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (200,'The Cross Keys, 69 High Street, Bedford','MK40 1RZ',NULL,'E197');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (291,'The Star Inn, 42 High Street, Clapham, Bedfordshire','MK41 6EG',NULL,'E198');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (170,'Vange And Pitsea Working Mens Club, High Road, Vange, Basildon','SS16 4TG',NULL,'E199');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (261,'The Bedford Golf Clubhouse, 10 Carnoustie Drive, Great Denham, Bedford','MK40 4FF',NULL,'E200');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (232,'Pavenham Park Golf Club, High Street, Pavenham, Bedford','MK43 7PE',NULL,'E201');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (201,'The Crown Inn, Green End, Little Staughton, Bedford','MK44 2BU',NULL,'E202');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (292,'Sun Inn, Grange Road, Felmersham, Bedford','MK43 7EU',NULL,'E203');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (171,'Wick Community Centre, Salcott Crescent, Wickford, Essex','SS12 9NR',NULL,'E204');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (262,'The Bell, 61 High Road, Cotton End, Bedford','MK45 3AE',NULL,'E205');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (233,'42 Midland Road, Bedford','MK40 1QB',NULL,'E206');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (202,'Devonshire Arms, 32 Dudley Street, Bedford','MK40 3TB',NULL,'E207');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (293,'The Swan With Two Nicks, 38 High Street, Sharnbrook, Bedford','MK44 1PF',NULL,'E208');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (172,'Runwell Road, Wickford, Essex','SS11 7HG',NULL,'E209');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (263,'The Bell, 81 High Street, Odell, Bedford','MK43 7AS',NULL,'E210');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (234,'Podington Cricket Club, Hinwick Road, Podington, Bedford','NN29 7HU',NULL,'E211');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (203,'13 St Johns Street, Bedford','MK42 0AH',NULL,'E212');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (294,'117 Tavistock Street, Bedford','MK40 2SB',NULL,'E213');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (173,'Luncies Road, Basildon, Essex','SS14 1SB',NULL,'E214');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (264,'115 Putnoe Lane, Bedford','MK41 9AH',NULL,'E215');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (235,'United Services Club, Gold Street, Podington, Bedford','NN29 7HX',NULL,'E216');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (204,'3a Lurke Street, Bedford','MK40 3HZ',NULL,'E217');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (295,'Three Compasses, High Street, Upper Dean, Bedford','PE28 0NE',NULL,'E218');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (174,'1 Northumberland Avenue, Laindon, Basildon','SS15 6NL',NULL,'E219');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (265,'The Bull, 259 London Road, Bedford','MK42 0PX',NULL,'E220');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (236,'The Polhill Arms, 25 Wilden Road, Renhold, Bedford','MK41 0JP',NULL,'E221');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (205,'Fox & Duck, 13 Bedford Road, Wootton, Bedford','MK43 9JT',NULL,'E222');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (296,'The Three Cranes, High Street, Turvey, Bedford','MK43 8EP',NULL,'E223');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (175,'Addison Howard Park, Bedford Road, Kempston, Bedford','MK42 8PN',NULL,'E224');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (266,'The Castle, 17 Newnham Street, Bedford','MK40 3JR',NULL,'E225');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (237,'The Prince Of Wales, 8 Northampton Road, Bromham, Bedford','MK43 8PE',NULL,'E226');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (206,'Fox And Hounds, High Street, Riseley, Bedford','MK44 1DT',NULL,'E227');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (297,'The Three Cups, 45 Newnham Street, Bedford','MK40 3JR',NULL,'E228');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (176,'Kempston Rovers Football Club, Hillgrounds Road, Kempston, Bedford','MK42 8QG',NULL,'E229');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (267,'The Chequers Inn, Pertenhall Road, Keysoe, Bedford','MK44 2HR',NULL,'E230');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (238,'Queens Tavern, 120 Queens Drive, Bedford','MK41 9JF',NULL,'E231');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (207,'Fox And Hounds, 1 Milton Road, Clapham, Bedford','MK41 6AP',NULL,'E232');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (298,'The Tiger Moth, 20 Avon Drive, Bedford','MK41 7AF',NULL,'E233');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (177,'30 The Broadway, Bedford','MK40 2TH',NULL,'E234');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (268,'The Chequers Inn, High Street, Yielden, Bedford','MK44 1AW',NULL,'E235');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (239,'93 Ashburnham Road, Bedford','MK40 1EA',NULL,'E236');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (208,'The Fox And Hounds, 178 Goldington Road, Bedford','MK40 3EB',NULL,'E237');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (299,'2-4 Bedford Road, Wilstead, Bedford','MK45 3HW',NULL,'E238');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (178,'1 Duke Street, Bedford','MK40 3HR',NULL,'E239');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (269,'The Chimney Corner Public House, Ampthill Road, Kempston Hardwick, Bedford','MK45 3JF',NULL,'E240');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (240,'Red Lion, Bedford Road, Wilstead, Bedford','MK45 3HN',NULL,'E241');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (209,'Fox Inn, 35 High Street, Carlton, Bedford','MK43 7LA',NULL,'E242');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (300,'The Three Tuns, 57 Main Road, Biddenham, Bedford','MK40 4BD',NULL,'E243');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (179,'Palace Chambers, Silver Street, Bedford','MK40 1SY',NULL,'E244');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (270,'The Cock Inn, 2 Bedford Road, Wootton, Bedfordshire','MK43 9JT',NULL,'E245');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (241,'Royal Oak, 33 High Street, Roxton, Bedford','MK44 3EA',NULL,'E246');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (210,'Santa Pod Raceway, Podington Airfield, Airfield Road, Podington, Bedford','NN29 7XA',NULL,'E247');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (301,'Victoria Arms Ph, 23 High Street, Wilden, Bedford','MK44 2PB',NULL,'E248');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (180,'29 Harpur Street, Bedford','MK40 1LA',NULL,'E249');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (271,'The Crown, 17 Station Road, Willington, Bedford','MK44 3QH',NULL,'E250');

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (302,'55 High Street, Bedford','MK40 1RZ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (303,'Wait For The Wagon, 13 Great North Road, Wyboston, Bedford','MK44 3AJ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (304,'40-42 Wellington Street, Bedford','MK40 2JX',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (305,'White Horse, 84 Newnham Avenue, Bedford','MK41 9PX',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (306,'14-15 St Pauls Square, Bedford','MK40 1SL',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (307,'53-55 High Street, Bedford','MK40 1RZ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (308,'Ye Three Fyshes Inn, Bridge Street, Turvey, Bedford','MK43 8ER',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (309,'47 The Street, Rayne, Braintree, Essex','CM77 6RU',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (310,'81 - 83 High Street, Braintree, Essex','CM7 1JS',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (311,'Haverhill Golf Club Ltd, Coupals Road, Sturmer, Halstead','CB9 7UW',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (312,'Coggeshall Road, Earls Colne, Colchester, Essex','CO6 2JX',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (313,'Chapel Hill, Halstead, Essex','CO9 1JP',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (314,'Bocking End, Braintree, Essex','CM7 9AE',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (315,'Church Street, Braintree, Essex','CM7 5JY',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (316,'Church Street, Bocking, Braintree, Essex','CM7 5LA',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (317,'Church Road, Bradwell, Essex','CM77 8EW',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (318,'Great Square, Braintree, Essex','CM7 1TY',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (319,'29/31 Clare Road, Braintree, Essex','CM7 2PA',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (320,'Beckers Green Road, Braintree, Essex','CM7 3PR',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (321,'Clockhouse Way, Braintree, Essex','CM7 3DE',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (322,'10 Leather Lane, Braintree, Essex','CM7 1UZ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (323,'Sheepcot Road, Castle Hedingham, Halstead, Essex','CO9 3HB',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (324,'32 Church Street, Coggeshall, Colchester, Essex','CO6 1TX',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (325,'Kelvedon Road, Coggeshall, Colchester, Essex','CO6 1RQ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (326,'West Street, Coggeshall, Colchester, Essex','CO6 1NT',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (327,'Station Road, Earls Colne, Colchester, Essex','CO6 2ER',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (328,'16/18 York Road, Earls Colne, Colchester','CO6 2RN',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (329,'C/O 54 Whitehorse Ave,, Halstead, Essex','CO9 1AL',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (330,'Village Hall, Broadway, Silver End, Witham','CM8 3RQ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (331,'1 The Street, White Notley, Witham, Essex','CM8 1RU',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (332,'Coggeshall Road, Bradwell, Essex','CM77 8EU',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (333,'Halstead Road, Earls Colne, Colchester, Essex','CO6 2NG',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (334,'4 Foundry Lane, Earls Colne, Colchester, Essex','CO6 2SB',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (335,'High Street, Kelvedon, Colchester, Essex','CO5 9DX',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (336,'3 Chapel Street, Steeple Bumpstead, Haverhill, Essex','CB9 7DQ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (337,'The Street, Gosfield, Halstead, Essex','CO9 1TD',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (338,'34 High Street, Halstead, Essex','CO9 2AP',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (339,'Star Stile, Sudbury Road, Halstead','CO9 2RP',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (340,'Parsonage Street, Halstead, Essex','CO9 2JZ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (341,'Phoenix Road, Sturmer, Haverhill, Suffolk','CB9 7AE',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (342,'68 Newland Street, Witham, Essex','CM8 1AH',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (343,'84 High Street, Kelvedon, Colchester, Essex','CO5 9AA',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (344,'75 High Street, Kelvedon, Essex','CO5 9AE',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (345,'114 London Road, Braintree, Essex','CM77 7PU',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (346,'Dorothy Sayers Drive, Witham, Essex','CM8 2LX',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (347,'MDPGA, Wethersfield, Braintree, Essex','CM7 4AZ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (348,'Church Lane, Castle Hedingham, Halstead, Essex','CO9 3DA',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (349,'1 Crouch Green, Castle Hedingham, Halstead, Essex','CO9 3DX',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (350,'Notley Green, Great Notley, Braintree, Essex','CM77 7US',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (351,'94 Panfield Lane, Braintree, Essex','CM7 5RL',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (352,'The Four Releet, Church Street, Braintree, Essex','CM7 5LJ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (353,'Pinkuah Lane, Pentlow, Sudbury, Suffolk','CO10 7JW',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (354,'Howbridge Road, Witham, Essex','CM8 1BX',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (355,'94 Church Street, Bocking, Braintree, Essex','CM7 5JY',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (356,'2A Trinity Street, Halstead, Essex','CO9 1JD',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (357,'Crosspath, Station Road, Sible Hedingham, Essex','CO9 3QB',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (358,'Broadway, Silver End, Witham, Essex','CM8 3RA',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (359,'1 Lockrams Lane, Witham, Essex','CM8 2BJ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (360,'2 Stepfield, Witham, Essex','CM8 3TH',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (361,'The Street, Hatfield Peverel, Chelmsford, Essex','CM3 2DW',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (362,'The Dismals, Terling, Chelmsford, Essex','CM3 2PY',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (363,'33 Notley Road, Braintree, Essex','CM7 1HA',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (364,'St Marys Square, High Street, Kelvedon, Colchester','CO5 9AN',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (365,'100/102 Newland Street, Witham, Essex','CM8 1AH',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (366,'Dunmow Road, Great Bardfield, Braintree, Essex','CM7 4SA',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (367,'Kynaston Road, Panfield, Braintree, Essex','CM7 5AQ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (368,'10 St James Street, Castle Hedingham, Halstead, Essex','CO9 3EJ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (369,'The Street, Feering, Colchester, Essex','CO5 9QQ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (370,'104A Bradford Street, Braintree, Essex','CM7 9AU',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (371,'Blackmore End, Wethersfield, Braintree, Essex','CM7 4DD',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (372,'Market Place, Braintree, Essex','CM7 3HJ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (373,'77 High Street, Earls Colne, Colchester, Essex','CO6 2QX',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (374,'4 Market Hill, Coggeshall, Colchester, Essex','CO6 1TS',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (375,'Cressing Road, Witham, Essex','CM8 2NW',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (376,'Compasses Road, Pattiswick, Braintree, Essex','CM77 8BG',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (377,'Colchester Road, Halstead, Essex','CO9 2DY',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (378,'The Green, Hatfield Peverel, Chelmsford, Essex','CM3 2JQ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (379,'21 High Street, Earls Colne, Essex','CO6 2PA',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (380,'The Street, Hatfield Peverel, Chelmsford, Essex','CM3 2EA',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (381,'6 Colchester Road, Bures, Sudbury, Suffolk','CO8 5AE',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (382,'7 Mill Lane, Colne Engaine, Colchester, Essex','CO6 2HY',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (383,'The Green, Finchingfield, Braintree, Essex','CM7 4JX',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (384,'36 Newland Street, Witham, Essex','CM8 2AQ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (385,'The Street, Shalford, Braintree, Essex','CM7 5HH',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (386,'Upper London Road, Black Notley, Braintree, Essex','CM77 8QN',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (387,'1 The Street, Gosfield, Halstead, Essex','CO9 1TP',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (388,'3 Church Lane, Toppesfield, Halstead, Essex','CO9 4DR',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (389,'Parsonage Street, Halstead, Essex','CO9 2JT',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (390,'Cole Green, Belchamp St Paul, Sudbury, Essex','CO10 7DP',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (391,'Henny Street, Great Henny, Sudbury, Suffolk','CO10 7LS',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (392,'Cornish Hall End, Finchingfield, Braintree, Essex','CM7 4HF',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (393,'20 Rayne Road, Braintree, Essex','CM7 2QA',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (394,'Chapel Road, Ridgewell, Halstead, Essex','CO9 4RU',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (395,'11 High Street, Earls Colne, Colchester, Essex','CO6 2PA',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (396,'Butler Road, Halstead, Essex','CO9 1LL',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (397,'10 - 12 Market Place, Braintree, Essex','CM7 3HG',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (398,'Braintree Bypass, Braintree, Essex','CM77 8GG',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (399,'8 Market Place, Braintree, Essex','CM7 3HG',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (400,'The Street, Stisted, Braintree, Essex','CM77 8AW',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (401,'Cressing Road, Braintree, Essex','CM7 3PH',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (402,'Audley End, Gestingthorpe, Halstead, Essex','CO9 3AU',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (403,'Fairfield Road, Braintree, Essex','CM7 3HA',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (404,'The Street, Birdbrook, Halstead, Essex','CO9 4BJ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (405,'2 Chipping Hill, Witham, Essex','CM8 2DE',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (406,'182 High Street, Kelvedon, Essex','CO5 9JD',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (407,'Church Hill, Finchingfield, Braintree, Essex','CM7 4NN',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (408,'The Street, Sturmer, Haverhill, Essex','CB9 7XF',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (409,'Fowes Lane, Belchamp Otten, Sudbury, Suffolk','CO10 7BQ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (410,'7 Newland Street, Witham, Essex','CM8 2AF',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (411,'8 Church Street, Steeple Bumpstead, Haverhill','CB9 7DG',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (412,'42 Church Street, Bocking, Braintree, Essex','CM7 5JY',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (413,'58 High Street, Halstead, Essex','CO9 2JG',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (414,'Unit 5, Lakes Road, Braintree, Essex','CM7 3RU',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (415,'51 Newland Street, Witham, Essex','CM8 2BD',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (416,'Fuller Street, Fairstead, Chelmsford, Essex','CM3 2BB',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (417,'Feering Hill, Feering, Essex','CO5 9NH',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (418,'1 The Street, Rayne, Braintree, Essex','CM77 6RQ',NULL,NULL);

INSERT INTO address(Address_ID,Address,Postcode,Customer_ID,Employee_ID) VALUES (419,'153 Newland Street, Witham, Essex','CM8 1BE',NULL,NULL);


DROP TABLE IF EXISTS delivery;

CREATE TABLE IF NOT EXISTS delivery(

   delivery_ID   VARCHAR(12) NOT NULL PRIMARY KEY

  ,Delivery_Date VARCHAR(10) NOT NULL

  ,deliveryName  VARCHAR(11) NOT NULL

  ,delivery_qty  INTEGER  NOT NULL

  ,phoneNumber   VARCHAR(12) NOT NULL

  ,email         VARCHAR(28) NOT NULL

);

INSERT INTO delivery(delivery_ID,Delivery_Date,deliveryName,delivery_qty,phoneNumber,email) VALUES

('SHP555666777','12/31/2014','Royal Mail',63,'669-792-1661','Ernest.Barnes31@outlook.com')

,('TRK666777888','12/30/2014','DHL Express',54,'858-637-6955','Andrea_Baker94@aol.com')

,('PKG222333444','12/29/2014','Hermes',96,'652-885-2745','Rebecca_Parker@comcast.net')

,('EXP777888999','12/28/2014','DPD',90,'364-656-8427','Laura_M@gmail.com')

,('ORD555666777','12/27/2014','Parcelforce',67,'713-226-5883','LHines@verizon.com')

,('CNM111222333','12/26/2014','UK Mail',87,'190-271-6743','JFletcher43@xfinity.com')

,('SHP444555666','12/25/2014','DHL Express',87,'420-332-5209','Rangel.Dylan@comcast.net')

,('TRK333555666','12/24/2014','Parcelforce',74,'286-669-4333','Velez_William@mail.com')

,('PKG777888999','12/23/2014','DPD',63,'341-726-5787','Steven.Murphy54@aol.com')

,('EXP111222333','12/22/2014','UK Mail',59,'316-648-6176','MichaelMoore81@outlook.com')

,('ORD666555444','12/21/2014','Royal Mail',71,'833-887-7898','PhD.Priscilla74@att.com')

,('CNM444555666','12/20/2014','Hermes',81,'804-383-4080','Smith.Laurie@att.com')

,('SHP666777888','12/19/2014','DPD',90,'211-071-2173','Casey_T78@outlook.com')

,('TRK222333444','12/18/2014','Parcelforce',56,'435-075-8409','Rachel.F@protonmail.com')

,('PKG888999000','12/17/2014','DHL Express',51,'790-746-7471','Edward.T@zoho.com')

,('EXP333444555','12/16/2014','UK Mail',100,'649-384-5387','Zavala_Samuel46@xfinity.com')

,('ORD777888999','12/15/2014','Hermes',86,'331-430-8824','Dr.Martin@xfinity.com')

,('CNM666555444','12/14/2014','Parcelforce',62,'573-306-9938','Sara.L@hotmail.com')

,('SHP888999000','12/13/2014','DPD',88,'466-424-2102','CRodriguez@verizon.com')

,('TRK444555666','12/12/2014','Royal Mail',58,'896-642-1049','StephanieSchmidt@hotmail.com')

,('PKG555666777','12/11/2014','DHL Express',59,'952-496-4398','John.Matthews@aol.com')

,('EXP444333222','12/10/2014','DPD',55,'382-465-6552','Robert.Chung47@yandex.com')

,('ORD333444555','12/09/2014','Hermes',75,'784-675-4921','MGarcia16@comcast.net')

,('CNM555444333','12/08/2014','UK Mail',64,'227-329-7167','BrandonTaylor@hotmail.com')

,('SHP555444333','12/07/2014','Parcelforce',56,'211-889-2476','Angie_Sanchez@att.com')

,('TRK777666555','12/06/2014','DHL Express',75,'103-516-5853','King_Alexis70@hotmail.com')

,('PKG666555444','12/05/2014','Royal Mail',67,'336-525-2460','MichaelDavidson82@att.com')

,('EXP555444333','12/04/2014','UK Mail',68,'549-866-3721','JaimeFlynn29@gmail.com');
