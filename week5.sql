create database emp1;
use emp1;
create table department(deptno int primary key, dname varchar(30), dloc varchar(40));
create table employee(empno int primary key, ename varchar(50), mgrno int, hire_date date, sal int, deptno int, foreign key(deptno) references department(deptno));
create table project(pno int primary key, ploc varchar(50), pname varchar(30));
create table assignedTo(empno int, foreign key (empno) references employee(empno), pno int, foreign key(pno) references project(pno), job_role varchar(40));
create table incentives(empno int, foreign key(empno) references employee(empno), incentive_date date primary key, incentive_amt int);
insert into department values(01,"Domestic Management","Mysuru");
insert into department values(02,"International Management","Bangalore");
insert into department values(03,"Technical","Hyderabad");
insert into department values(04,"Analysis","Mumbai");
insert into department values(05,"Production","Chennai");
insert into department values(06,"Business","Bangalore");
insert into employee values(1111,"Test 1",001,"2023-04-01",90000,01);
insert into employee values(1112,"Test 2",001,"2023-04-10",150000,02);
insert into employee values(1113,"Test 3",001,"2023-03-01",130000,03);
insert into employee values(1114,"Test 4",001,"2023-06-02",95000,04);
insert into employee values(1115,"Test 5",001,"2023-03-01",93000,01);
insert into employee values(1116,"Test 6",001,"2023-04-01",90000,01);
insert into employee values(1117,"Test 7",001,"2023-04-11",200000,02);
insert into project values(30,"Bangalore","Data Hive");
insert into project values(31,"Bangalore","Cyber Space");
insert into project values(32,"Mysuru","Cyber City");
insert into project values(33,"Hyderabad","Cyber Show");
insert into project values(34,"Mumbai","Data Hub");
insert into project values(35,"Chennai","Data Hive");
insert into project values(36,"Bangalore","Data Colony");
insert into assignedTo values(1111,30,"Supervision");
insert into assignedTo values(1112,30,"Management");
insert into assignedTo values(1113,31,"Lead");
insert into assignedTo values(1114,31,"Supervision");
insert into assignedTo values(1115,32,"Supervision");
insert into assignedTo values(1116,33,"Consultant");
insert into assignedTo values(1117,36,"Lead");
insert into incentives values(1111,"2024-03-05",100000);
insert into incentives values(1113,"2024-06-07",150000);
insert into incentives values(1115,"2024-05-08",100000);
insert into incentives values(1116,"2024-05-09",120000);
select empno from assignedTo where pno in(select pno from project where ploc = "Bangalore" or "Mysuru" or "Hyderabad");
select empno from employee where empno not in(select empno from incentives);
select E.ename, E.empno, A.job_role, d.dname, d.dloc as Dept_loc, p.ploc as Proj_Loc
from employee E
join department d on E.deptno = d.deptno
join assignedTo A on E.empno = A.empno
join project p on A.pno = p.pno
where d.dloc = p.ploc;
