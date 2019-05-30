CREATE TABLE EMP_SHAKIR
(
EmpID INT PRIMARY KEY,
EmpName VARCHAR(100) NOT NULL,
EmpSalary FLOAT DEFAULT 10000, 
DeptID INT
)



CREATE TABLE DEPT_SHAKIR
(
DeptID INT PRIMARY KEY, 
DeptName VARCHAR(100) NOT NULL
)



ALTER TABLE EMP_SHAKIR ADD CONSTRAINT CK_EMPSALARY CHECK(EmpSalary>9999)

ALTER TABLE EMP_SHAKIR ADD CONSTRAINT FK_DeptID FOREIGN KEY (DeptID) REFERENCES DEPT_SHAKIR(DeptID)




INSERT INTO DEPT_SHAKIR
SELECT 1,'SOFTWARE' UNION ALL
SELECT 2,'HR' UNION ALL
SELECT 3,'FINANCE' UNION ALL
SELECT 4,'QA' UNION ALL
SELECT 5,'ANALYTICS' UNION ALL
SELECT 6,'SPORTS'

INSERT INTO EMP_SHAKIR
SELECT 1,'SHAKIR',80000,5 UNION ALL
SELECT 2,'TOM',66890,1 UNION ALL
SELECT 3,'BOB',45654,2 UNION ALL
SELECT 4,'MARIA',88990,3 UNION ALL
SELECT 5,'JULIA',75000,4 UNION ALL
SELECT 6,'CHRIS',66000,5 UNION ALL
SELECT 7,'ANDREW',45000,6 UNION ALL
SELECT 8,'MIKE',59000,1 UNION ALL
SELECT 9,'MICHAEL',60000,2 UNION ALL
SELECT 10,'JHON',70000,3 UNION ALL
SELECT 11,'JOSEPH',35000,4 UNION ALL
SELECT 12,'KATY',54000,5 UNION ALL
SELECT 13,'SELENA',69000,6

/*
UPDATE Emp_DH

SET    Salary =

       CASE EmpId

            WHEN 101 THEN 10000

            WHEN 102 THEN 20000

            WHEN 103 THEN 30000

            WHEN 104 THEN 40000

            WHEN 105 THEN 50000

          

       END

WHERE  EmpId IN (101, 102, 103, 104, 105);
*/