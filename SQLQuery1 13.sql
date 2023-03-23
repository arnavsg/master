use sahiltest;
select e_dept, avg(e_salary) as avg_salary
from employee
group by e_dept
having avg(e_salary)>92000;

update employee set e_age=24 where e_name ='sahil';

select * from employee;

update employee set e_salary = 105000 where e_name = 'nisarg';

select * from employee;
delete from employee where e_age=25;
select * from employee;

create table emp_department(dept_id int, dept_name varchar(255));

alter table emp_department add dept_location varchar(255);
insert into emp_department values(1,'database','mumbai'),(2,'data operator','chennai'),(3,'data analyst','bangalore');
select * from emp_department;