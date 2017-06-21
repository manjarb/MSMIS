select e1.ename, e1.hiredate, e2.ename MGR_NAME, e2.hiredate from emp_oracle e1, emp_oracle e2
where e1.mgr = e2.empno
and e1.hiredate < e2.hiredate;

select emp.empno, emp.ename, dept.dname, emp.sal from emp_oracle emp, dept_oracle dept
where emp.deptno = dept.deptno;

select dept.deptno, dept.dname, emp.ename from dept_oracle dept, emp_oracle emp
where dept.deptno = emp.deptno(+)
order by deptno;

select ename, sal, job from emp_oracle
where job = (select job from emp_oracle where ename = 'FORD');


select ename, sal, job from emp_oracle
where sal > (select AVG(sal) from emp_oracle);

select ename, sal from emp_oracle
where job in (select job from emp_oracle where job <> 'Marketing');

select ename, sal 
from emp_oracle
where deptno in (select deptno from dept_oracle where dname <> 'Marketing');

select ename, sal 
from emp_oracle
where sal > ANY (select distinct sal 
	from emp_oracle e, dept_oracle d
	where e.deptno = d.deptno
        and d.dname = 'Accounting');


select ename, sal 
from emp_oracle
where sal > ALL (select distinct sal 
	from emp_oracle e, dept_oracle d
	where e.deptno = d.deptno
        and d.dname = 'Marketing');

select ename, sal 
from emp_oracle
where sal > ALL (select distinct sal 
	from emp_oracle e, dept_oracle d
	where e.deptno = d.deptno
        and d.dname = 'Marketing');

select emp.ename, dept.dname 
from emp_oracle emp, dept_oracle dept
where emp.deptno = dept.deptno
AND dept.dname LIKE '%t%';

select emp.ename, emp.job, emp.sal
from emp_oracle emp, dept_oracle dept
where emp.deptno = dept.deptno
AND dept.dname = 'Marketing';

select emp.ename, emp.job, emp.sal
from emp_oracle emp, dept_oracle dept
where emp.deptno = dept.deptno
AND sal > ALL(select distinct sal 
	from emp_oracle e, dept_oracle d
	where e.deptno = d.deptno
        and d.dname = 'Marketing');




