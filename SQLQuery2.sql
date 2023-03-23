use sahiltest;
select * from employee;
select distinct e_dept from employee;
select * from employee where e_dept ='database';
select * from employee where e_age<22;
select * from employee where e_age<=22;
select * from employee where e_salary>92000;
select * from employee where e_age>22 and e_salary>90000;
select * from employee where e_age>=22 and e_salary>=92000;