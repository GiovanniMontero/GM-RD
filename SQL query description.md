SELECT StudentPK, StudentName, LockerFK, LockerPK,

LockerType

FROM STUDENT LEFT OUTER JOIN LOCKER
ON STUDENT.LockerFK = LOCKER.LockerPK
ORDER BY StudentPK;

# Description

This is an advanced query because it shows students both with and without a locker. This uses the  
SQL feature known as an outer join. Here the command uses an SQL left outer join. The results  
of the query show a table of student names and the lockers assigned to them. On top of this  
it shows which lockers have not been assigned yet. 
