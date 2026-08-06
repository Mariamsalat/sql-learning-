USE WSDA_Music;
SHOW TABLES;
SELECT *
FROM Customer
LIMIT 5;

/* This query generates report that lists each customer alongside with their assigned support representative */
SELECT
c.FirstName AS CustomerFirstName,
c.LastName AS CustomerLastName,
e.firstName As SupportRepFirstName,
e.LastName As SupportRepLastName
FROM Customer AS c
JOIN  Employee As e
ON c.supportrepId = e.EmployeeId
ORDER BY e.LastName, c.LastName;
