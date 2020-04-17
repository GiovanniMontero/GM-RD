# Explanation of how each query works
--
1. The query below is a basic one. The select statement identifies what table you're choosing from.
the "*" key tells SQL we want all the information in that table. Finally, the where statement specifies
what we want the row to say, in this case it's "Adv Pastels."

SELECT * FROM COURSE
WHERE COURSE = Adv Pastels;




--
2. The following asks SQL to identify all students information and which classes they're enrolled in.
To do this we are required to first list all the columns we wish to see and in which order. This is what 
the select command is for. The FROM statement helps us identify where we wish to get this information 
(which table). However, this query requires us to combine the information of two tables, to do so we use 
JOIN statement to include the ENROLLMENT table. The way we link these two tables is by identifying a 
common attribute, in this case it is CustomerNumber. We decided to distinguish the two tables with "C" for 
customer and "E" for enrollment. this meant we had to tag this on each column heading along with the attribute
we used to combine the two tables, CustomerNumber.

SELECT C.CustomerNumber, C.CustomerLastName, C.CustomerFirstname, C.Phone, E.CourseNumber, E.AmountPaid
FROM CUSTOMER C

JOIN ENROLLMENT E
ON C.CUSTOMERNUMBER = E.CUSTOMERNUMBER;

--
3. This query requires that we use information from all 3 tables, this simply means we'll need two 
JOIN statements. We started by listing all the columns we needed and FROM which table. Similar to the 
second query we joined the Customer table "CR" with the Enrollment table "E" using a join and ON
statement. After this we introduced the third table Course "C" in order to bring in information 
on Course names "Adv Pastel." Similar to before we linked enrollment to course using a JOIN ON statement.
This query was finished off by specifying what information we wanted from the rows, specifically
the Course Date and name of the Course.

SELECT C.Course, C.CourseDate, C.Fee, CR.CustomerLastName, CR.CustomerFirstname, CR.Phone
FROM CUSTOMER CR
JOIN ENROLLMENT E
ON CR.CustomerNumber=E.CustomerNumber
JOIN COURSE C
ON C.COURSENUMBER=E.COURSENUMBER
WHERE CourseDate = To_Date('10/01/2019', 'mm/dd/yyyy')

AND C.Course = 'Adv Pastels';

--

4. This query is almost identical to query number 3 however we are simply asked to include more information,
specifically on Fees and Amount Paid. To do this we use the same information as above except now we tack on at 
the end "Fee" from the Course table and "AmountPaid" from the enrollment table. The rest is the same as query 3.


SELECT C.Course, C.CourseDate, CR.CustomerLastName, CR.CustomerFirstname, CR.Phone, 
C.Fee, E.AmountPaid
FROM CUSTOMER CR
JOIN ENROLLMENT E
ON CR.CustomerNumber=E.CustomerNumber
JOIN COURSE C
ON C.COURSENUMBER=E.COURSENUMBER
WHERE CourseDate = To_Date('10/01/2019', 'mm/dd/yyyy')

AND C.Course = 'Adv Pastels';







