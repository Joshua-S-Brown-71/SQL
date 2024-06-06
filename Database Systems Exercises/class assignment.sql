use company;

-- 1 
-- select * from employee where dno=5;

-- 2
--  select * from employee, department where employee.dno=department.dno and dname='Research';

-- 3
--  select E.Fname as Emp_Fname, E.Lname as Emp_Lname, D.Dname, M.Fname as Manager_Fname, M.Lname as Manager_Fname from employee E, employee M, department D where E.dno=D.dno and D.mgrssn=M.ssn and dname='Research';

-- 4
--  select E.Fname , E.Lname, E.salary, Dname, M.Fname, M.Lname, M.salary
-- from employee E, employee M, department D 
-- where E.dno=D.dno and D.mgrssn=M.ssn and E.salary>M.salary;

-- 5
--  select E.Fname , E.Lname 
-- from employee E, employee S
-- where E.superssn=S.ssn and  E.salary>S.salary;

-- 6
-- select E.SSN, E.Fname , E.Lname 
-- from employee E
-- where E.dno and E.salary

-- 7
select E.Fname , E.Lname, E.SSN
from employee E, department D 
where E.SSN=D.Essn 
group by E.SSN, E.Fname , E.Lname
having count(*)>2
-- count(Essn)