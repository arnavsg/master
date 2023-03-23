use sahiltest;
drop table student;
create table employee(
e_id int,
e_name varchar(20),
e_salary int,
e_age int,
e_gender varchar(20),
e_dept varchar(20),

primary key(e_id)

);
insert into employee values(
1,'sahil',95000,23,'male','database'
);
insert into employee values(
2,'nisarg',90000,22,'male','database'
);
insert into employee values(
3,'krishna',88000,25,'male','data operator'
);
insert into employee values
(4,'darshan',90000,22,'male','data operator'),
(5,'akshay',92000,24,'male','data analyst'),
(6,'parth',94000,22,'male','data analyst');
select * from employee;
select distinct e_dept from employee;

