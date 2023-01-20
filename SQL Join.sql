/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */


Select p.Name , c.Name  from products as p 
inner join categories as c on p.CategoryID = c.CategoryID 
where p.CategoryID = 1;
 

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */

select p.Name, p.Price, r.Rating
from products as p
inner join reviews as r on p.ProductID = r.ProductID
Where R.Rating = 5;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */




select  e.FirstName as 'First Name',e.LastName as 'Last Name'  ,sum(s.Quantity) as 'Quantity Sold'
from employees as e 
inner join sales as s on e.EmployeeID = s.EmployeeID
group by s.EmployeeID;


/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.DepartmentID as "Department ID", d.Name as 'Name', c.Name as 'Category Name'
from departments as d
inner join categories as c on c.DepartmentID = d.DepartmentID
where c.Name like 'Appliance%'or c.Name like 'Game%';


/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 
 
select p.Name as 'Product Name', sum(s.Quantity) as 'Total Price Sold', sum(s.Quantity * s.PricePerUnit) as 'Total Price Sold'
from sales as s
inner join products as p on p.ProductID = s.ProductID
where p.Name like 'Eagles: Hotel%';

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */

select p.Name as 'Product Name', r.Reviewer, min(r.Rating) as Rating, R.Comment
from reviews as r 
inner join products as p on p.ProductID = r.ProductID
where p.Name like 'Visio%';



-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */


Select e.EmployeeID as 'Employee ID',e.FirstName as 'First Name',e.LastName as 'Last Name', p.Name as 'Product Name', s.Quantity as 'amount sold'
from products as p
inner join sales as s on p.ProductID = s.ProductID
inner join employees as e on s.EmployeeID = e.EmployeeID;






