
create table emp1(empno number(5) not null ,ename varchar2(20) not null,salary number(5),deptno number(5));

insert into emp1 values (101, 'BOB', 4000, 201);
insert into emp1 values(102, 'SAMUEL', 3000,301);
insert into emp1 values(101, 'MARY', 2000,401);
insert into emp1(empno,ename) values(104, 'BOB');
insert into emp1 (ename)values('AKS');

select * from user_constraints;

select * from user_constraints where table_name='emp1';

SELECT constraint_name, constraint_type, table_name
FROM user_constraints
WHERE table_name = 'ORDERS';

SELECT table_name, constraint_name, constraint_type
FROM user_constraints
ORDER BY table_name;

SELECT constraint_name, constraint_type
FROM all_constraints
WHERE table_name = 'EMP1';

