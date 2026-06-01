
-- 1. Find all customers from Chennai

SELECT *
FROM Customers c
JOIN Cities ci
ON c.CityID = ci.CityID
WHERE ci.CityName = 'Chennai';


-- 2. Retrieve all open support tickets

SELECT *
FROM SupportTickets
WHERE Status = 'Open';


-- 3. Find total customers in each city

SELECT ci.CityName,
COUNT(*) AS TotalCustomers
FROM Customers c
JOIN Cities ci
ON c.CityID = ci.CityID
GROUP BY ci.CityName;


-- 4. Display employees working in Sales department

SELECT e.*
FROM Employees e
JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Sales';


-- 5. Find total sales handled by each employee

SELECT EmployeeID,
SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY EmployeeID;


-- 6. Retrieve customers without any sales

SELECT *
FROM Customers
WHERE CustomerID NOT IN
(
SELECT CustomerID
FROM Sales
);


-- 7. Find all sales above ₹50,000

SELECT *
FROM Sales
WHERE SaleAmount > 50000;


-- 8. Display top 10 highest sales amounts

SELECT *
FROM Sales
ORDER BY SaleAmount DESC
LIMIT 10;


-- 9. Find average customer rating

SELECT AVG(Rating) AS AverageRating
FROM Feedback;


-- 10. Retrieve customers registered this month

SELECT *
FROM Customers
WHERE MONTH(RegistrationDate) = MONTH(CURDATE())
AND YEAR(RegistrationDate) = YEAR(CURDATE());


-- 11. Find customers who made more than one purchase

SELECT CustomerID,
COUNT(*) AS PurchaseCount
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) > 1;


-- 12. Retrieve employees with more than 5 years experience

SELECT *
FROM Employees
WHERE ExperienceYears > 5;


-- 13. Find total tickets raised by each customer

SELECT CustomerID,
COUNT(*) AS TotalTickets
FROM SupportTickets
GROUP BY CustomerID;


-- 14. Display all unresolved tickets

SELECT *
FROM SupportTickets
WHERE Status <> 'Resolved';


-- 15. Find customers who never provided feedback

SELECT *
FROM Customers
WHERE CustomerID NOT IN
(
SELECT CustomerID
FROM Feedback
);


-- 16. Retrieve cities having more than 100 customers

SELECT ci.CityName,
COUNT(*) AS TotalCustomers
FROM Customers c
JOIN Cities ci
ON c.CityID = ci.CityID
GROUP BY ci.CityName
HAVING COUNT(*) > 100;


-- 17. Display feedback ratings below 3

SELECT *
FROM Feedback
WHERE Rating < 3;


-- 18. Find total CRM revenue generated

SELECT SUM(SaleAmount) AS TotalRevenue
FROM Sales;


-- 19. Retrieve sales count month-wise

SELECT MONTH(SaleDate) AS Month,
COUNT(*) AS SalesCount
FROM Sales
GROUP BY MONTH(SaleDate)
ORDER BY Month;


-- 20. Find total opportunities in each stage

SELECT Stage,
COUNT(*) AS TotalOpportunities
FROM Opportunities
GROUP BY Stage;

