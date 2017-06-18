CREATE TABLE DEPT_MSMIS7163
(DEPTNO CHAR(2),
DEPTNAME VARCHAR(20),
CONSTRAINT DEPT_MSMIS7163_DEPTNO_PK
	   PRIMARY KEY (DEPTNO));

CREATE TABLE EMP_MSMIS7163
(EMPNO CHAR(4),
 EMPNAME VARCHAR2(20),
 POSITION VARCHAR2(15),
 SALARY NUMBER(6),
 DEPTNO CHAR(2),
 CONSTRAINT EMP_MSMIS7163_EMPNO_PK 
 			PRIMARY KEY (EMPNO),
 CONSTRAINT EMP_MSMIS7163_DEPTNO_FK 
 			FOREIGN KEY (DEPTNO) 
 			REFERENCES DEPT_MSMIS7163 (DEPTNO))

CREATE TABLE CUSTOMER_MSMIS7163
(Custno CHAR(4),
 Custname VARCHAR2(20),
 EMPNO CHAR(4),
 CONSTRAINT CUSTOMER_MSMIS7163_PK
 			PRIMARY KEY (Custno),
 CONSTRAINT CUSTOMER_MSMIS7163_FK
 			FOREIGN KEY (EMPNO) 
 			REFERENCES EMP_MSMIS7163 (EMPNO));

INSERT INTO DEPT_MSMIS7163 (DEPTNO,DEPTNAME)
VALUES ('&20','&BCC');

ALTER TABLE DEPT_MSMIS7163
 ADD (LOCATION VARCHAR2(20));

ALTER TABLE DEPT_MSMIS7163
 MODIFY (LOCATION VARCHAR2(30));

DROP TABLE CUSTOMER_MSMIS7163;
