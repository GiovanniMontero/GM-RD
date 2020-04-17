# Ex07 queries and descriptions
---
// 1. Query that pulls all occurences of 'Adv Pastels' from the course table//

SELECT * FROM COURSE
WHERE COURSE = Adv Pastels;



//2. Query that pulls student Name, ID, Phone, Course Number, and amount along
with the courses they are registered for.//

SELECT C.CustomerNumber, C.CustomerLastName, C.CustomerFirstname, C.Phone, E.CourseNumber, E.AmountPaid
FROM CUSTOMER C

JOIN ENROLLMENT E
ON C.CUSTOMERNUMBER = E.CUSTOMERNUMBER;


//3. Query used to identify students who enrolled in Adv Pastels on October 1st of 2019//

SELECT C.Course, C.CourseDate, C.Fee, CR.CustomerLastName, CR.CustomerFirstname, CR.Phone
FROM CUSTOMER CR
JOIN ENROLLMENT E
ON CR.CustomerNumber=E.CustomerNumber
JOIN COURSE C
ON C.COURSENUMBER=E.COURSENUMBER
WHERE CourseDate = To_Date('10/01/2019', 'mm/dd/yyyy')

AND C.Course = 'Adv Pastels';
