/* *** SQL-Query-CH03-01 *** */
SELECT ProjectID, ProjectName, Department, MaxHours,

StartDate, EndDate

FROM PROJECT;

/* *** SQL-Query-CH03-02 *** */
SELECT *
FROM PROJECT;

/* *** SQL-Query-CH03-03 *** */
SELECT ProjectName, Department, MaxHours
FROM PROJECT;

/* *** SQL-Query-CH03-04 *** */
SELECT ProjectName, MaxHours, Department
FROM PROJECT;

/* *** SQL-Query-CH03-05 *** */
SELECT Department
FROM PROJECT;

/* *** SQL-Query-CH03-06 *** */
SELECT DISTINCT Department
FROM PROJECT;

/* *** SQL-Query-CH03-07 *** */
SELECT *
FROM PROJECT
WHERE Department = 'Finance';

/* *** SQL-Query-CH03-08 *** */
SELECT *
FROM PROJECT
WHERE StartDate = '05/10/2017';

/* *** SQL-Query-CH03-09 *** */
SELECT *
FROM PROJECT
WHERE MaxHours > 135;

/* *** SQL-Query-CH03-10 *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting';

/* *** SQL-Query-CH03-11 *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
ORDER BY Department;

/* *** SQL-Query-CH03-12 *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
ORDER BY Department DESC;

/* *** SQL-Query-CH03-13 *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
ORDER BY Department DESC, LastName ASC;

/* *** SQL-Query-CH03-14 *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting'
AND OfficePhone = '360-285-8430';

/* *** SQL-Query-CH03-15 *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting'
OR OfficePhone = '360-285-8410';

/* *** SQL-Query-CH03-16 *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting'
AND NOT OfficePhone = '360-285-8430';

/* *** SQL-Query-CH03-17 *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department IN ('Administration', 'Finance',

'Accounting');

/* *** SQL-Query-CH03-18 *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department NOT IN ('Administration', 'Finance',

'Accounting');

/* *** SQL-Query-CH03-19 *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE EmployeeNumber >= 2
AND EmployeeNumber <= 5;

/* *** SQL-Query-CH03-20 *** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE EmployeeNumber BETWEEN 2 AND 5;

/* *** SQL-Query-CH03-21 *** */
SELECT *
FROM PROJECT
WHERE ProjectName LIKE '2017 Q_ Portfolio Analysis';

/* *** SQL-Query-CH03-22 *** */
SELECT *
FROM EMPLOYEE
WHERE OfficePhone LIKE '360-287-88 ';

/* *** SQL-Query-CH03-23 *** */
SELECT *
FROM EMPLOYEE
WHERE OfficePhone LIKE '360-287-88%';

/* *** SQL-Query-CH03-24 *** */
SELECT *
FROM EMPLOYEE
WHERE Department LIKE '%ing';

/* *** SQL-Query-CH03-25 *** */
SELECT *
FROM EMPLOYEE
WHERE Department NOT LIKE '%ing';

