  
SELECT employees.jobTitle, offices.country, offices.city
FROM offices
INNER JOIN employees ON offices.officeCode=employees.officeCode;


# marketing

SELECT employees.employeeNumber, employees.jobTitle, employees.lastName, employees.firstName, offices.officeCode,
offices.country, offices.city, employees.reportsTo
FROM offices
INNER JOIN employees ON offices.officeCode=employees.officeCode
WHERE jobTitle = "VP Marketing" OR jobTitle = "President";