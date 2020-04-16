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
