create database insurence1;
use insurence1;
create table person(driver_id varchar(10), pname varchar(20), address varchar(30), primary key(driver_id));
create table car(reg_num varchar(10), model varchar(10), cyear int, primary key(reg_num));
create table accident(report_num int, accident_date date, location varchar(30),primary key(report_num));
create table owns(driver_id varchar(10), reg_num varchar(10), primary key(driver_id, reg_num),
foreign key(driver_id) references person(driver_id),
foreign key(reg_num) references car(reg_num));
create table participated(driver_id varchar(10), reg_num varchar(10), report_num int, damage_amount int,
primary key(driver_id, reg_num, report_num),
foreign key(driver_id) references person(driver_id),
foreign key(reg_num) references car(reg_num),
foreign key(report_num) references accident(report_num));
insert into person values('K20','Avinash','Basavanagudi');
insert into person values('K21','Dinesh','Jayanagar');
insert into person values('K22','Richard','Hebbal');
insert into person values('K23','Pradeep','Banashankari');
insert into person values('K24','Dinesh','Indiranagar');
insert into car values('KA20BA117','Swift',2000);
insert into car values('KA1JA837','Lancer',1997);
insert into car values('KA22HE783','XUV',1999);
insert into car values('KA23BN050','Alto',1998);
insert into car values('KA24IN738','Audi',1999);
insert into accident values(11,'2001-01-09','HSR');
insert into accident values(12,'2001-02-05','BTM');
insert into accident values(13,'2001-03-18','Kadugudi');
insert into accident values(14,'2001-05-19','Banashankari');
insert into accident values(15,'2002-06-20','ITPL');
insert into participated values('K20','KA20BA117',11,19000);
insert into participated values('K21','KA1JA837',12,18000);
insert into participated values('K22','KA22HE783',13,13000);
insert into participated values('K23','KA23BN050',14,21000);
insert into participated values('K24','KA24IN738',15,27000);
insert into owns values('K20','KA20BA117');
insert into owns values('K21','KA1JA837');
insert into owns values('K22','KA22HE783');
insert into owns values('K23','KA23BN050');
insert into owns values('K24','KA24IN738');
select * from participated;
update participated set damage_amount=25000 
where reg_num='KA1JA837' and report_num=12;
select * from participated;
select accident_date,location from accident;
select driver_id, damage_amount from participated where damage_amount >= 25000;
select * from car order by cyear;
select count(report_num) from participated where reg_num in (select reg_num from car where model = 'Lancer');
