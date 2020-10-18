 # top_ten.csv 
  
SELECT SUM(payments.amount) AS total_money,
customers.city, customers.country, payments.customerNumber
FROM customers 
INNER JOIN payments ON customers.customerNumber=payments.customerNumber
GROUP BY payments.customerNumber, customers.city, customers.country
ORDER BY total_money DESC LIMIT 10; 

# payment_date

SELECT customers.city, customers.country, payments.customerNumber, payments.paymentDate,
customers.customerName, payments.amount
FROM customers 
INNER JOIN payments ON customers.customerNumber=payments.customerNumber
WHERE payments.customerNumber = 141 OR payments.customerNumber = 124;

SELECT payments.customerNumber, employees.employeeNumber,
customers.customerName, payments.amount, employees.firstName, employees.lastName
FROM customers 
INNER JOIN payments ON customers.customerNumber=payments.customerNumber
INNER JOIN employees ON customers.salesRepEmployeeNumber = employees.employeeNumber
GROUP BY customerNumber, amount, customerName;


