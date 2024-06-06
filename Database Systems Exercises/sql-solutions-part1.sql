use company;
/* Q1 */
select * from employee where dno=5;

/* Q2 */
select * 
from employee E, department D
where E.dno=D.dno and dname='Research'

/* Q3 */
select E.Fname, E.Lname, D.Dname, M.Fname, M.Lname
from employee E, department D, employee M
where E.dno=D.dno and D.mgrssn=M.ssn and dname='Research'

/* Q4 */
select E.Fname, E.Lname, E.Salary, Dname, M.Fname, M.Lname, M.Salary
from employee E, department D, employee M
where E.dno=D.dno and D.mgrssn=M.ssn AND E.salary > M.salary;

/* Q5 */
select E.Fname, E.Lname
from employee E, employee S
where E.superssn=S.ssn
and E.salary > S.salary;





