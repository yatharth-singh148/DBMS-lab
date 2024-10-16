create database bankdata1;
use bankdata1;
create table Branch(branch_name varchar(30), branch_city varchar(20), assets real);
create table BankAccount(accno int, branch_name varchar(30), balance real);
create table BankCustomer(customer_name varchar(30), customer_street varchar(30), customer_city varchar(20));
create table Depositer(customer_name varchar(20), accno int);
create table Loan(loan_number int, branch_name varchar(30), amount real);
insert into Branch values(('SBIChamrajpet', 'Bangalore', 50000), 
('SBIResidencyRoad', 'Bangalore', 10000), 
('SBIShivajiRoad', 'Bombay', 20000), 
('SBIParlimentRoad', 'Delhi', 10000), 
('SBIJantarmantar', 'Delhi', 20000));
insert into BankAccount values((1,'SBIChamrajpet',2000),
(2,'SBIResidencyRoad',5000),
(3,'SBIShivajiRoad',6000),
(4,'SBIParlimentRoad',9000),
(5,'SBIJantarMantar',8000),
(6,'SBIShivajiRoad',4000),
(8,'SBIResidencyRoad',4000),
(9,'SBIParlimentRoad',3000),
(10,'SBIResidencyRoad',5000),(11,'SBIJantarmantar',2000));
insert into BankCustomer values('Avinash','Bull_Temple_Road','Bangalore');
insert into BankCustomer values('Dinesh','Bannergatta_Road','Bangalore');
insert into BankCustomer values('Mohan','NationalCollege_Road','Bangalore');
insert into BankCustomer values('Nikil','Akbar_Road','Delhi');
insert into BankCustomer values('Ravi','Prithviraj_Road','Delhi');
insert into Depositer values('Avinash',1);
insert into Depositer values('Dinesh',2);
insert into Depositer values('Nikil',4);
insert into Depositer values('Ravi',5);
insert into Depositer values('Avinash',8);
insert into Depositer values('Nikil',9);
insert into Depositer values('Dinesh',10);
insert into Depositer values('Nikil',11);
insert into Loan values(1,'SBIChamrajpet',1000);
insert into Loan values(2,'SBIResidencyRoad',2000);
insert into Loan values(3,'SBIShivajiRoad',3000);
insert into Loan values(4,'SBIParlimentRoad',4000);
insert into Loan values(5,'SBIJantarmantar',5000);
