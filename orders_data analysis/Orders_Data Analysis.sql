# sorting

SELECT products.productCode,
SUM(quantityInStock) - SUM(quantityOrdered)
FROM products
INNER JOIN orderdetails ON products.productCode=orderdetails.productCode
GROUP BY productCode
ORDER BY SUM(quantityInStock) - SUM(quantityOrdered) ASC LIMIT 10;

# top_ 10 

SELECT products.productCode, SUM(quantityOrdered)
FROM products
INNER JOIN orderdetails ON products.productCode=orderdetails.productCode
GROUP BY productCode
ORDER BY SUM(quantityOrdered) DESC LIMIT 10;

SELECT products.productCode,
SUM(quantityInStock) - SUM(quantityOrdered)
FROM products
INNER JOIN orderdetails ON products.productCode=orderdetails.productCode
GROUP BY productCode
ORDER BY SUM(quantityInStock) - SUM(quantityOrdered) DESC LIMIT 10;

# top_3 

SELECT products.productCode, productDescription, orderdetails.priceEach - products.buyPrice, 
SUM(quantityInStock) - SUM(quantityOrdered)
FROM products
INNER JOIN orderdetails ON products.productCode=orderdetails.productCode
GROUP BY productCode
ORDER BY SUM(quantityInStock) - SUM(quantityOrdered) ASC LIMIT 3;

# Most_urgent

SELECT orders.requiredDate, orderdetails.productCode
FROM orderdetails
INNER JOIN orders ON orderdetails.orderNumber=orders.orderNumber
WHERE productCode = "S12_1099"
OR productCode = "S24_2000"
OR productCode = "S32_4289"
GROUP BY productCode; 